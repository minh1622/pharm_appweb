using QuanLyKho.ViewModel;
using QuanLyKhoByPharm.Model;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QuanLyKhoByPharm.ViewModel
{
    public class ShowRP2ViewModel : BaseViewModel
    {
        private ObservableCollection<OutputInfo> _List;
        public ObservableCollection<OutputInfo> List { get => _List; set { _List = value; OnPropertyChanged(); } }
        public ShowRP2ViewModel()
        {
            UserControlReport rp = new UserControlReport();
            var RpVM = rp.DataContext as ReportViewModel;
            List = new ObservableCollection<OutputInfo>(DataProvider.Ins.DB.OutputInfoes.Where(p => p.IdOutput == RpVM.b));
        }
    }
}