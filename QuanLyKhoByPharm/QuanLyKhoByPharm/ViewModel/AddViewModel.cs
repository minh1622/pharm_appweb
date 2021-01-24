using QuanLyKho.ViewModel;
using QuanLyKhoByPharm.Model;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Input;

namespace QuanLyKhoByPharm.ViewModel
{
    public class AddViewModel : BaseViewModel
    {
        private ObservableCollection<InputInfo> _List;
        public ObservableCollection<InputInfo> List { get => _List; set { _List = value; OnPropertyChanged(); } }

        private ObservableCollection<Model.Object> _Object;
        public ObservableCollection<Model.Object> Object { get => _Object; set { _Object = value; OnPropertyChanged(); } }
        private InputInfo _SelectedItem;
        public InputInfo SelectedItem
        {
            get => _SelectedItem;
            set
            {
                _SelectedItem = value;
                OnPropertyChanged();
                if (SelectedItem != null)
                {
                    SelectedObject = SelectedItem.Object;
                    Count = SelectedItem.Cout;
                    InputPrice = SelectedItem.InputPrice;
                    OutputPrice = SelectedItem.OutputPrice;
                    HanSD = SelectedItem.HanSD;
                    Id = SelectedItem.Input.Id;
                    DateInput = SelectedItem.Input.CreDate;
                }
            }
        }
        private Model.Object _SelectedObject;
        public Model.Object SelectedObject { get => _SelectedObject; set { _SelectedObject = value; OnPropertyChanged(); } }
        private int _Count;
        public int Count { get => _Count; set { _Count = value; OnPropertyChanged(); } }
        private string _Id;
        public string Id { get => _Id; set { _Id = value; OnPropertyChanged(); } }
        private double _InputPrice;
        public double InputPrice { get => _InputPrice; set { _InputPrice = value; OnPropertyChanged(); } }
        private double _OutputPrice;
        public double OutputPrice { get => _OutputPrice; set { _OutputPrice = value; OnPropertyChanged(); } }
        private DateTime _HanSD;
        public DateTime HanSD { get => _HanSD; set { _HanSD = value; OnPropertyChanged(); } }
        private DateTime _DateInput;
        public DateTime DateInput { get => _DateInput; set { _DateInput = value; OnPropertyChanged(); } }

        public ICommand AddCommand { get; set; }
        public ICommand EditCommand { get; set; }
        public ICommand DeleteCommand { get; set; }
        public ICommand Refresh { get; set; }
        public ICommand NhapkhoCommand { get; set; }
        public ICommand Taohd { get; set; }
        public AddViewModel()
        {
            List = new ObservableCollection<InputInfo>(DataProvider.Ins.DB.InputInfoes);
            List.Clear();
            loadobj();
            void loadobj()
            {
                Object = new ObservableCollection<Model.Object>(DataProvider.Ins.DB.Objects);
            }
            Refresh = new RelayCommand<object>((p) => {
                return true;
            },
            (p) => {
                loadobj();
            });
            bool kiemtra = false;
            //Tạo hóa đơn
            Taohd = new RelayCommand<object>((p) => {
                if (Id != null)
                    return true;
                else
                    return false;
            },
            (p) => {
                var Hoadonnhap = DataProvider.Ins.DB.Inputs.Where(x => x.Id == Id).Count();
                if (Hoadonnhap == 0)
                {
                    kiemtra = true;
                    var NewInput = new Input()
                    {
                        Id = Id,
                        CreDate = DateTime.Now
                    };
                    DataProvider.Ins.DB.Inputs.Add(NewInput);
                    DataProvider.Ins.DB.SaveChanges();
                    MessageBox.Show("Tạo hóa đơn thành công!");
                }
                else
                {
                    MessageBox.Show("Mã hóa đơn đã tồn tại. Vui lòng nhập mã hóa đơn khác!");
                    return;
                }
            });

            AddCommand = new RelayCommand<object>((p) => {

                if (Count <= 0 || InputPrice <= 0 || OutputPrice <= 0 || SelectedObject == null)
                    return false;
                else
                    return true;
            },
            (p) => {
                if (kiemtra == true)
                {
                    var Add1 = new InputInfo()
                    {
                        Id = Guid.NewGuid().ToString(),
                        IdInput = Id,
                        IdObject = SelectedObject.Id,
                        Cout = Count,
                        InputPrice = InputPrice,
                        OutputPrice = OutputPrice,
                        HanSD = HanSD
                    };
                    DataProvider.Ins.DB.InputInfoes.Add(Add1);
                    DataProvider.Ins.DB.SaveChanges();
                    List.Add(Add1);
                }
                else
                {
                    MessageBox.Show("Bạn cần tạo hóa đơn trước!");
                    return;
                }
            });

            EditCommand = new RelayCommand<object>((p) => {
                if (Count <= 0 || InputPrice <= 0 || OutputPrice <= 0 || SelectedObject == null)
                    return false;
                else
                    return true;
            },
            (p) => {
                var Add1 = DataProvider.Ins.DB.InputInfoes.Where(x => x.Id == SelectedItem.Id).SingleOrDefault();
                Add1.IdObject = SelectedObject.Id;
                Add1.Cout = Count;
                Add1.InputPrice = InputPrice;
                Add1.OutputPrice = OutputPrice;
                Add1.HanSD = HanSD;
                DataProvider.Ins.DB.SaveChanges();
            });

            DeleteCommand = new RelayCommand<object>((p) => {
                return true;
            },
            (p) => {
                var clr = DataProvider.Ins.DB.InputInfoes.Where(x => x.Id == SelectedItem.Id).SingleOrDefault();
                List.Remove(clr);
                DataProvider.Ins.DB.InputInfoes.Remove(clr);
                var check = DataProvider.Ins.DB.InputInfoes.Where(x => x.IdInput == Id).Count();
                if (check == 1)
                {
                    MessageBoxResult a = MessageBox.Show("Bạn có muốn hủy hóa đơn?", "Thông báo", MessageBoxButton.YesNo);
                    if (a == MessageBoxResult.Yes)
                    {
                        var clrinput = DataProvider.Ins.DB.Inputs.Where(x => x.Id == Id).SingleOrDefault();
                        DataProvider.Ins.DB.Inputs.Remove(clrinput);
                        kiemtra = false;
                    }
                    else
                        return;
                }
                DataProvider.Ins.DB.SaveChanges();
            });


            NhapkhoCommand = new RelayCommand<object>((p) => {
                return true;
            },
            (p) => {
                MessageBoxResult a = MessageBox.Show("Bạn có muốn nhập kho?", "Thông báo", MessageBoxButton.YesNo);
                if (a == MessageBoxResult.Yes)
                {
                    MessageBox.Show("Nhập kho thành công!");
                    List.Clear();
                    kiemtra = false;
                }
                else
                    return;
            });
        }
    }
}
