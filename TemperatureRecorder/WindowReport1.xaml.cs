using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;
using Microsoft.Reporting.WinForms;

namespace TemperatureRecorder
{
    /// <summary>
    /// Interaction logic for WindowReport1.xaml
    /// </summary>
    public partial class WindowReport1 : Window
    {
        public WindowReport1()
        {
            InitializeComponent();
            ReportViewer1.Load+=ReportViewer1OnLoad;
        }

        private void ReportViewer1OnLoad(object sender, EventArgs eventArgs)
        {
            //DataSet1 ds = new DataSet1();

            //ReportDataSource reportDataSource=new ReportDataSource();
            
            //ds.BeginInit();
            //reportDataSource.Name = "DataSet1";
            //reportDataSource.Value = ds.Person;
            //ReportViewer1.LocalReport.DataSources.Add(reportDataSource);
            //ReportViewer1.LocalReport.ReportEmbeddedResource = "WpfApplication1.Report1.rdlc";
            //ds.EndInit();

            //ds.Person.AddPersonRow("Mahmood", "Ramzani", 29);
            //ReportViewer1.RefreshReport();
        }
    }
}
