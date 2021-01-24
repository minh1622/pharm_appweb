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
    public class ShowRPViewModel : BaseViewModel
    {
        private ObservableCollection<InputInfo> _List;
        public ObservableCollection<InputInfo> List { get => _List; set { _List = value; OnPropertyChanged(); } }
        public ShowRPViewModel()
        {
            UserControlReport rp = new UserControlReport();
            var RpVM = rp.DataContext as ReportViewModel;
            List = new ObservableCollection<InputInfo>(DataProvider.Ins.DB.InputInfoes.Where(p => p.IdInput == RpVM.a));
        }
    }
}
