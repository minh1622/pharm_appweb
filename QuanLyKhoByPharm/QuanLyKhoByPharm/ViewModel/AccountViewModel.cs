using QuanLyKho.ViewModel;
using QuanLyKhoByPharm.Model;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;

namespace QuanLyKhoByPharm.ViewModel
{
    public class AccountViewModel : BaseViewModel
    {
        private ObservableCollection<User> _List;
        public ObservableCollection<User> List { get => _List; set { _List = value; OnPropertyChanged(); } }

        private User _SelectedItem;
        public User SelectedItem
        {
            get => _SelectedItem;
            set
            {
                _SelectedItem = value;
                OnPropertyChanged();
                if (SelectedItem != null)
                {
                    UserName = SelectedItem.UserName;
                    Displayname = SelectedItem.Displayname;

                }
            }
        }


        private string _UserName;
        public string UserName { get => _UserName; set { _UserName = value; OnPropertyChanged(); } }
        private string _Displayname;
        public string Displayname { get => _Displayname; set { _Displayname = value; OnPropertyChanged(); } }


        private string _Tendn;
        public string Tendn { get => _Tendn; set { _Tendn = value; OnPropertyChanged(); } }
        private string _Tenht;
        public string Tenht { get => _Tenht; set { _Tenht = value; OnPropertyChanged(); } }
        private string _Password;
        public string Password { get => _Password; set { _Password = value; OnPropertyChanged(); } }
        private string _RPassword;
        public string RPassword { get => _RPassword; set { _RPassword = value; OnPropertyChanged(); } }
        private string _OldPassword;
        public string OldPassword { get => _OldPassword; set { _OldPassword = value; OnPropertyChanged(); } }
        private string _NewPassword;
        public string NewPassword { get => _NewPassword; set { _NewPassword = value; OnPropertyChanged(); } }
        private string _ReNewPassword;
        public string ReNewPassword { get => _ReNewPassword; set { _ReNewPassword = value; OnPropertyChanged(); } }


        public ICommand PasswordChangedCommand { get; set; }
        public ICommand RPasswordChangedCommand { get; set; }
        public ICommand OldPasswordChangedCommand { get; set; }
        public ICommand NewPasswordChangedCommand { get; set; }
        public ICommand ReNewPasswordChangedCommand { get; set; }
        public ICommand AddCommand { get; set; }
        public ICommand DeleteCommand { get; set; }
        public ICommand ChangePasswordCommand { get; set; }

        public AccountViewModel()
        {
            List = new ObservableCollection<User>(DataProvider.Ins.DB.Users);
            PasswordChangedCommand = new RelayCommand<PasswordBox>((p) => { return true; }, (p) => { Password = p.Password; });
            RPasswordChangedCommand = new RelayCommand<PasswordBox>((p) => { return true; }, (p) => { RPassword = p.Password; });
            OldPasswordChangedCommand = new RelayCommand<PasswordBox>((p) => { return true; }, (p) => { OldPassword = p.Password; });
            NewPasswordChangedCommand = new RelayCommand<PasswordBox>((p) => { return true; }, (p) => { NewPassword = p.Password; });
            ReNewPasswordChangedCommand = new RelayCommand<PasswordBox>((p) => { return true; }, (p) => { ReNewPassword = p.Password; });
            AddCommand = new RelayCommand<object>((p) => {
                var acc = DataProvider.Ins.DB.Users.Where(x => x.UserName == Tendn).Count();
                if (Password == RPassword && Tendn != null && Tenht != null && acc == 0 && Password != null)
                    return true;
                else
                    return false;
            },
            (p) => {
                var add1 = new User()
                {
                    UserName = Tendn,
                    Displayname = Tenht,
                    Password = Password,
                    IdRole = 1
                };
                DataProvider.Ins.DB.Users.Add(add1);
                DataProvider.Ins.DB.SaveChanges();
                List.Add(add1);
            });

            DeleteCommand = new RelayCommand<object>((p) => {
                return true;
            },
            (p) => {
                var clr = DataProvider.Ins.DB.Users.Where(x => x.Id == SelectedItem.Id).SingleOrDefault();
                if(SelectedItem.UserName == "admin")
                {
                    MessageBox.Show("Không thể xóa tài khoản admin!");
                    return;
                }
                else {
                    List.Remove(clr);
                    DataProvider.Ins.DB.Users.Remove(clr);
                    DataProvider.Ins.DB.SaveChanges();
                }
            });

            ChangePasswordCommand = new RelayCommand<object>((p) => {
                var a = DataProvider.Ins.DB.Users.Where(x => x.Id == SelectedItem.Id).SingleOrDefault();
                if (OldPassword != null && NewPassword != null && NewPassword == ReNewPassword)
                    return true;
                else return false;
            },
            (p) => {
                var edit = DataProvider.Ins.DB.Users.Where(x => x.Id == SelectedItem.Id).SingleOrDefault();
                if (edit.Password != OldPassword)
                {
                    MessageBox.Show("Mat Khau Cu Sai!");
                    return;
                }
                else
                {
                    edit.Password = NewPassword;
                    MessageBox.Show("Doi Mat Khau Thanh Cong!");
                }
                DataProvider.Ins.DB.SaveChanges();
            });
        }
    }
}
