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
    public class ReportViewModel : BaseViewModel
    {
        public string a;
        public  string b;
        public bool show1 = false;
        public bool show2 = false;
        private ObservableCollection<Input> _List1;
        public ObservableCollection<Input> List1 { get => _List1; set { _List1 = value; OnPropertyChanged(); } }
        private ObservableCollection<Output> _List2;
        public ObservableCollection<Output> List2 { get => _List2; set { _List2 = value; OnPropertyChanged(); } }
        private Input _SelectedItem1;
        public Input SelectedItem1{get => _SelectedItem1;   set { _SelectedItem1 = value; OnPropertyChanged(); } }
        private Output _SelectedItem2;
        public Output SelectedItem2 { get => _SelectedItem2; set { _SelectedItem2 = value; OnPropertyChanged(); } }
        public ICommand Refresh { get; set; }
        public ICommand ShowCommand1 { get; set; }
        public ICommand ShowCommand2 { get; set; }
        
        public ReportViewModel()
        {
            load();
            void load()
            {
                List1 = new ObservableCollection<Input>(DataProvider.Ins.DB.Inputs);
                List2 = new ObservableCollection<Output>(DataProvider.Ins.DB.Outputs);
            }

            Refresh = new RelayCommand<object>((p) => { return true; },
                (p) => {
                    load();
                }
            );

            ShowCommand1 = new RelayCommand<object> ((p) => { return true; },
                (p) =>{
                    if(SelectedItem1!=null)
                    {
                        a = SelectedItem1.Id;
                        ShowReport wd = new ShowReport();
                        wd.ShowDialog();
                    }
                }
            );
            ShowCommand2 = new RelayCommand<object>((p) => { return true; },
                (p) => {
                    if (SelectedItem2 != null)
                    {
                        b = SelectedItem2.Id;
                        ShowReport2 wd = new ShowReport2();
                        wd.ShowDialog();
                    }
                }
            );
        }  
    }
}
