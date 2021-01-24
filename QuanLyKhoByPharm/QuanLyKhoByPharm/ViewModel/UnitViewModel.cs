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
    public class UnitViewModel : BaseViewModel
    {
        private ObservableCollection<Unit> _List;
        public ObservableCollection<Unit> List { get => _List; set { _List = value; OnPropertyChanged(); } }

        private Unit _SelectedItem;
        public Unit SelectedItem
        {
            get => _SelectedItem;
            set
            {
                _SelectedItem = value;
                OnPropertyChanged();
                if (SelectedItem != null)
                {
                    DisplayName = SelectedItem.Displayname;
                }
            }
        }

        private String _DisplayName;
        public String DisplayName { get => _DisplayName; set { _DisplayName = value; OnPropertyChanged(); } }

        public ICommand AddCommand { get; set; }
        public ICommand EditCommand { get; set; }

        public UnitViewModel()
        {
            List = new ObservableCollection<Unit>(DataProvider.Ins.DB.Units);

            AddCommand = new RelayCommand<object>((p) => {
                if (string.IsNullOrEmpty(DisplayName))
                {
                    return false;
                }

                var DisplayList = DataProvider.Ins.DB.Units.Where(x => x.Displayname == DisplayName);
                if (DisplayList == null || DisplayList.Count() != 0)
                    return false;
                else
                    return true;
            },
            (p) => {

                var unit = new Unit()
                {
                    Displayname = DisplayName
                };
                DataProvider.Ins.DB.Units.Add(unit);
                DataProvider.Ins.DB.SaveChanges();
                List.Add(unit);
            });

            EditCommand = new RelayCommand<object>((p) => {
                if (string.IsNullOrEmpty(DisplayName) || SelectedItem == null)
                {
                    return false;
                }

                var DisplayList = DataProvider.Ins.DB.Units.Where(x => x.Displayname == DisplayName);
                if (DisplayList == null || DisplayList.Count() != 0)
                    return false;
                else
                    return true;
            },
            (p) => {

                var unit = DataProvider.Ins.DB.Units.Where(x => x.Id == SelectedItem.Id).SingleOrDefault();
                unit.Displayname = DisplayName;
                DataProvider.Ins.DB.SaveChanges();
            });
        }
    }
}
