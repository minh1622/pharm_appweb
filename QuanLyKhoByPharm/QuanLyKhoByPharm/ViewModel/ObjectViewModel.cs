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
    public class ObjectViewModel : BaseViewModel
    {
        private ObservableCollection<Model.Object> _List;
        public ObservableCollection<Model.Object> List { get => _List; set { _List = value; OnPropertyChanged(); } }

        private ObservableCollection<Unit> _Unit;
        public ObservableCollection<Unit> Unit { get => _Unit; set { _Unit = value; OnPropertyChanged(); } }


        private Model.Object _SelectedItem;
        public Model.Object SelectedItem
        {
            get => _SelectedItem;
            set
            {
                _SelectedItem = value;
                OnPropertyChanged();
                if (SelectedItem != null)
                {
                    DisplayName = SelectedItem.Displayname;
                    SelectedUnit = SelectedItem.Unit;
                }
            }
        }

        private Unit _SelectedUnit;
        public Unit SelectedUnit
        {
            get => _SelectedUnit;
            set
            {
                _SelectedUnit = value;
                OnPropertyChanged();
            }
        }

        private String _DisplayName;
        public String DisplayName { get => _DisplayName; set { _DisplayName = value; OnPropertyChanged(); } }
        public ICommand AddCommand { get; set; }
        public ICommand EditCommand { get; set; }
        public ICommand Refresh { get; set; }

        public ObjectViewModel()
        {
            loadobj();
            Refresh = new RelayCommand<object>((p) => {
                return true;
            },
            (p) => {
                loadobj();

            });
            void loadobj()
            {
                List = new ObservableCollection<Model.Object>(DataProvider.Ins.DB.Objects);
                Unit = new ObservableCollection<Unit>(DataProvider.Ins.DB.Units);
            }


            Random ran = new Random();
            AddCommand = new RelayCommand<object>((p) => {
                if (string.IsNullOrEmpty(DisplayName))
                {
                    return false;
                }

                var DisplayList = DataProvider.Ins.DB.Objects.Where(x => x.Displayname == DisplayName);
                if (DisplayList == null || DisplayList.Count() != 0 || SelectedUnit == null)
                    return false;
                else
                    return true;
            },
            (p) => {

                var Object1 = new Model.Object()
                {
                    Displayname = DisplayName,
                    IdUnit = SelectedUnit.Id,
                    Id = ran.Next(1, 50).ToString()
                };
                DataProvider.Ins.DB.Objects.Add(Object1);
                DataProvider.Ins.DB.SaveChanges();
                List.Add(Object1);
            });

            EditCommand = new RelayCommand<object>((p) => {
                if (string.IsNullOrEmpty(DisplayName) || SelectedItem == null || SelectedUnit == null)
                {
                    return false;
                }
                else
                    return true;
            },
            (p) => {

                var Object = DataProvider.Ins.DB.Objects.Where(x => x.Id == SelectedItem.Id).SingleOrDefault();
                Object.Displayname = DisplayName;
                Object.IdUnit = SelectedUnit.Id;
                DataProvider.Ins.DB.SaveChanges();
            });

        }
    }
}
