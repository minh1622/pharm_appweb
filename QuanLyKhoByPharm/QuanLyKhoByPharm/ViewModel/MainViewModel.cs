using QuanLyKho.ViewModel;
using QuanLyKhoByPharm.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Input;

namespace QuanLyKhoByPharm.ViewModel
{
    public class MainViewModel : BaseViewModel
    {
        public bool Isloaded = false;
        public ICommand LoadedWindowCommand { get; set; }
        public ICommand AccountCommand { get; set; }
        public ICommand ExitCommand { get; set; }
        //Code xử lý trung tâm
        public MainViewModel()
        {
            LoadedWindowCommand = new RelayCommand<Window>((p) => { return true; }, (p) => {
                Isloaded = true;
                p.Hide();
                LoginWindow loginWindow = new LoginWindow();
                loginWindow.ShowDialog();
                if (loginWindow.DataContext == null)
                    return;
                var LoginVM = loginWindow.DataContext as LoginViewModel;
                if (LoginVM.IsLogin)
                {
                    p.Show();
                }
                else
                {
                    p.Close();
                }
            }
              );
            AccountCommand = new RelayCommand<object>((p) => { return true; }, (p) => { ItemAccount wd = new ItemAccount(); wd.ShowDialog(); });
            ExitCommand = new RelayCommand<MainWindow>((p) => { return true; }, (p) => { p.Close(); }); // Thoát chương trình bằng Exit
        }
    }
}
