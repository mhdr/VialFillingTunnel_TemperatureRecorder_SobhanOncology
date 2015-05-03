using System;
using System.Collections.Generic;
using System.Drawing.Printing;
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
        private LogExport _logExport;
        public WindowReport1()
        {
            InitializeComponent();
            ReportViewer1.Load+=ReportViewer1OnLoad;
        }

        public LogExport Export
        {
            get { return _logExport; }
            set { _logExport = value; }
        }

        private void ReportViewer1OnLoad(object sender, EventArgs eventArgs)
        {
            var ds=new DataSetLog();
            var reportDataSource = new ReportDataSource();

            ds.BeginInit();
            reportDataSource.Name = "DataSetLog";
            reportDataSource.Value = ds.LogExport;
            ReportViewer1.LocalReport.DataSources.Add(reportDataSource);
            ReportViewer1.LocalReport.ReportEmbeddedResource = "TemperatureRecorder.Report2.rdlc";
            ReportViewer1.LocalReport.EnableExternalImages = true;
            ds.EndInit();

            ds.LogExport.Clear();
            ds.LogExport.AddLogExportRow(Export.ItemName,Export.StartDate,Export.EndDate,Export.Graph,Export.HashValue);

            var pageSettings = new PageSettings();
            pageSettings.Margins.Top = 0;
            pageSettings.Margins.Bottom = 0;
            pageSettings.Margins.Left = 0;
            pageSettings.Margins.Right = 0;

            var pageSize = new PaperSize();
            pageSize.RawKind = (int)PaperKind.A4;
            pageSettings.PaperSize = pageSize;

            pageSettings.Landscape = true;

            ReportViewer1.SetPageSettings(pageSettings);
            ReportViewer1.RefreshReport();
        }
    }
}
