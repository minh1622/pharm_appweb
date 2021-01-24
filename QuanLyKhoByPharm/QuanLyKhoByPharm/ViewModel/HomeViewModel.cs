using QuanLyKho.ViewModel;
using QuanLyKhoByPharm.Model;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;

namespace QuanLyKhoByPharm.ViewModel
{
    public class HomeViewModel : BaseViewModel
    {
        private ObservableCollection<TonKho> _TonKhoList;
        public ObservableCollection<TonKho> TonKhoList { get => _TonKhoList; set { _TonKhoList = value; OnPropertyChanged(); } }
        private int _TonKho;
        public int TonKho { get => _TonKho; set { _TonKho = value; OnPropertyChanged(); } }
        public ICommand Refresh { get; set; }

        public HomeViewModel()
        {
            load();
            Refresh = new RelayCommand<object>((p) => { return true; },
                (p) => { load(); });
            void load()
            {
                TonKho = 0;
                TonKhoList = new ObservableCollection<TonKho>();
                int i = 1;
                var objectlist = DataProvider.Ins.DB.Objects;
                foreach (var item in objectlist)
                {
                    var inputList = DataProvider.Ins.DB.InputInfoes.Where(p => p.IdObject == item.Id).Count();
                    var outputList = DataProvider.Ins.DB.OutputInfoes.Where(q => q.IdObject == item.Id).Count();

                    int a = 0;
                    int b = 0;
                    if (inputList != 0)
                    {
                        a = DataProvider.Ins.DB.InputInfoes.Where(p => p.IdObject == item.Id).Sum(p => p.Cout);
                    }
                    if (outputList != 0)
                    {
                        b = DataProvider.Ins.DB.OutputInfoes.Where(q => q.IdObject == item.Id).Sum(q => q.Cout);
                    }
                    TonKho tonkho = new TonKho();
                    tonkho.STT = i;
                    tonkho.Count = a - b;
                    tonkho.Object = item;
                    i++;
                    TonKho += tonkho.Count;
                    TonKhoList.Add(tonkho);
                }
            }
        }
    }
}
