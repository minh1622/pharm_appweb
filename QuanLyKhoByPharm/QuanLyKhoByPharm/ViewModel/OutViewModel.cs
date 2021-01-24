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
    public class OutViewModel : BaseViewModel
    {
        private ObservableCollection<OutputInfo> _List;
        public ObservableCollection<OutputInfo> List { get => _List; set { _List = value; OnPropertyChanged(); } }

        private ObservableCollection<Model.Object> _Object;
        public ObservableCollection<Model.Object> Object { get => _Object; set { _Object = value; OnPropertyChanged(); } }

        private OutputInfo _SelectedItem;
        public OutputInfo SelectedItem
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
                    DateOutput = SelectedItem.Output.CreDate;
                }
            }
        }

        private Model.Object _SelectedObject;
        public Model.Object SelectedObject { get => _SelectedObject; set { _SelectedObject = value; OnPropertyChanged(); } }
        private int _Count;
        public int Count { get => _Count; set { _Count = value; OnPropertyChanged(); } }
        private string _Id;
        public string Id { get => _Id; set { _Id = value; OnPropertyChanged(); } }
        private double _PriceOutput;
        public double PriceOutput { get => _PriceOutput; set { _PriceOutput = value; OnPropertyChanged(); } }
        private DateTime _DateOutput;
        public DateTime DateOutput { get => _DateOutput; set { _DateOutput = value; OnPropertyChanged(); } }
        public ICommand AddCommand { get; set; }
        public ICommand EditCommand { get; set; }
        public ICommand DeleteCommand { get; set; }
        public ICommand Refresh { get; set; }
        public ICommand Taohd { get; set; }
        public ICommand XuatkhoCommand { get; set; }

        public OutViewModel()
        {
            List = new ObservableCollection<OutputInfo>(DataProvider.Ins.DB.OutputInfoes);
            //List.Clear();
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
                var Hoadonxuat = DataProvider.Ins.DB.Outputs.Where(x => x.Id == Id).Count();
                if (Hoadonxuat == 0)
                {
                    kiemtra = true;
                    var NewOutput = new Output()
                    {
                        Id = Id,
                        CreDate = DateTime.Now
                    };
                    DataProvider.Ins.DB.Outputs.Add(NewOutput);
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

                if (Count <= 0 || SelectedObject == null)
                    return false;
                else
                    return true;
            },
            (p) => {
                if(kiemtra == true)
                {
                    var Add1 = new OutputInfo()
                    {
                        Id = Guid.NewGuid().ToString(),
                        IdOutput = Id,
                        IdInputInfo = "1",
                        IdObject = SelectedObject.Id,
                        Cout = Count,

                    };
                    DataProvider.Ins.DB.OutputInfoes.Add(Add1);
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
                if (Count <= 0 || SelectedObject == null)
                    return false;
                else
                    return true;
            },
            (p) => {
                var Add1 = DataProvider.Ins.DB.OutputInfoes.Where(x => x.Id == SelectedItem.Id).SingleOrDefault();
                Add1.IdObject = SelectedObject.Id;
                Add1.Cout = Count;
                DataProvider.Ins.DB.SaveChanges();
            });

            DeleteCommand = new RelayCommand<object>((p) => {
                return true;
            },
            (p) => {
                var clr = DataProvider.Ins.DB.OutputInfoes.Where(x => x.Id == SelectedItem.Id).SingleOrDefault();
                List.Remove(clr);
                DataProvider.Ins.DB.OutputInfoes.Remove(clr);
                var check = DataProvider.Ins.DB.OutputInfoes.Where(x => x.IdOutput == Id).Count();
                if (check == 1)
                {
                    MessageBoxResult a = MessageBox.Show("Bạn có muốn hủy hóa đơn?", "Thông báo", MessageBoxButton.YesNo);
                    if (a == MessageBoxResult.Yes)
                    {
                        var clrinput = DataProvider.Ins.DB.Outputs.Where(x => x.Id == Id).SingleOrDefault();
                        DataProvider.Ins.DB.Outputs.Remove(clrinput);
                        kiemtra = false;
                    }
                    else
                        return;
                }
                DataProvider.Ins.DB.SaveChanges();
            });

            XuatkhoCommand = new RelayCommand<object>((p) => {
                return true;
            },
            (p) => {
                MessageBoxResult a = MessageBox.Show("Bạn có muốn xuất kho?", "Thông báo", MessageBoxButton.YesNo);
                if (a == MessageBoxResult.Yes)
                {
                    MessageBox.Show("Xuất kho thành công!");
                    List.Clear();
                    kiemtra = false;
                }
                else
                    return;
            });

        }

    }
}
