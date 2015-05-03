using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Windows.Threading;
using Microsoft.Win32;
using Telerik.Windows.Controls.Charting;
using Telerik.Windows.Controls.ChartView;
using Telerik.Windows.Controls.Legend;
using Telerik.Windows.Data;
using Telerik.Windows.Documents.FormatProviders.Pdf;
using Telerik.Windows.Documents.Layout;
using Telerik.Windows.Documents.Model;
using LineSeries = Telerik.Windows.Controls.ChartView.LineSeries;
using Paragraph = Telerik.Windows.Documents.Model.Paragraph;
using Section = Telerik.Windows.Documents.Model.Section;
using Span = Telerik.Windows.Documents.Model.Span;
using Table = Telerik.Windows.Documents.Model.Table;
using TableCell = Telerik.Windows.Documents.Model.TableCell;
using TableRow = Telerik.Windows.Documents.Model.TableRow;

namespace TemperatureRecorder
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }

        RadObservableCollection<Log> item1Live = new RadHierarchicalObservableCollection<Log>();
        RadObservableCollection<Log> item2Live = new RadHierarchicalObservableCollection<Log>();
        RadObservableCollection<Log> item3Live = new RadHierarchicalObservableCollection<Log>();

        private List<TunnelLog> LastTunnelLogs = new List<TunnelLog>();

        private DispatcherTimer Timer1 = new DispatcherTimer(DispatcherPriority.Send);

        private TunnelLogs Tunnel = new TunnelLogs();

        private List<Item> Items = new List<Item>();

        TemperatureRecorderEntities Entities = new TemperatureRecorderEntities();
        List<Log> _logs = new List<Log>();
        private DateTime? _fromDate;
        private DateTime? _toDate;
        private string _concatedHash;
        private double _min;
        private double _max;

        public DateTime? FromDate
        {
            get { return _fromDate; }
            set { _fromDate = value; }
        }

        public DateTime? ToDate
        {
            get { return _toDate; }
            set { _toDate = value; }
        }

        public List<Log> Logs
        {
            get { return _logs; }
            set { _logs = value; }
        }

        public string ConcatedHash
        {
            get { return _concatedHash; }
            set { _concatedHash = value; }
        }

        public double Min
        {
            get { return _min; }
            set { _min = value; }
        }

        public double Max
        {
            get { return _max; }
            set { _max = value; }
        }

        private void MainWindow_OnLoaded(object sender, RoutedEventArgs e)
        {
            Items = Entities.Items.ToList();

            foreach (Item item in Items)
            {
                ComboBoxItemName.Items.Add(item.ItemName);
            }

            Timer1.Interval = new TimeSpan(0, 0, 0, 5);
            Timer1.IsEnabled = true;
            Timer1.Tick += Timer1_Tick;

            LiveChart.Series.Add(new LineSeries());
            LineSeries series1 = (LineSeries)this.LiveChart.Series[0];
            series1.CategoryBinding = new PropertyNameDataPointBinding() { PropertyName = "Date" };
            series1.ValueBinding = new PropertyNameDataPointBinding() { PropertyName = "ItemValue" };
            series1.Stroke = Brushes.Blue;
            series1.StrokeThickness = 2;

            LiveChart.Series.Add(new LineSeries());
            LineSeries series2 = (LineSeries)this.LiveChart.Series[1];
            series2.CategoryBinding = new PropertyNameDataPointBinding() { PropertyName = "Date" };
            series2.ValueBinding = new PropertyNameDataPointBinding() { PropertyName = "ItemValue" };
            series2.Stroke = Brushes.LimeGreen;
            series2.StrokeThickness = 2;

            LiveChart.Series.Add(new LineSeries());
            LineSeries series3 = (LineSeries)this.LiveChart.Series[2];
            series3.CategoryBinding = new PropertyNameDataPointBinding() { PropertyName = "Date" };
            series3.ValueBinding = new PropertyNameDataPointBinding() { PropertyName = "ItemValue" };
            series3.Stroke = Brushes.OrangeRed;
            series3.StrokeThickness = 2;

            series1.ItemsSource = item1Live;
            series2.ItemsSource = item2Live;
            series3.ItemsSource = item3Live;

            LiveChartLegend.Items.Add(new LegendItem() { MarkerFill = Brushes.Blue, Title = Items[0].ItemName });
            LiveChartLegend.Items.Add(new LegendItem() { MarkerFill = Brushes.LimeGreen, Title = Items[1].ItemName });
            LiveChartLegend.Items.Add(new LegendItem() { MarkerFill = Brushes.OrangeRed, Title = Items[2].ItemName });
        }

        void Timer1_Tick(object sender, EventArgs e)
        {
            foreach (Item item in Items)
            {
                string itemName = item.ItemName;
                int itemId = item.ItemId;

                TunnelLog currentLog = null;
                currentLog = Tunnel.GetValue(x => x.VarName == itemName);

                if (currentLog != null)
                {
                    TunnelLog lastLog = LastTunnelLogs.FirstOrDefault(x => x.VarName == itemName);

                    if (lastLog == null)
                    {
                        Log log = new Log();
                        log.ItemId = itemId;
                        log.ItemValue = currentLog.VarValue;
                        log.Date = DateTime.Now;

                        Entities.Logs.Add(log);
                        Entities.SaveChanges();

                        var beforeHash = new StringBuilder();
                        beforeHash.Append(log.LogId);
                        beforeHash.Append(log.ItemId);
                        beforeHash.Append(log.ItemValue);
                        beforeHash.Append(log.Date);

                        var afterHash = ComputeHash(beforeHash.ToString());
                        log.HashValue = afterHash;

                        Entities.SaveChanges();

                        LastTunnelLogs.Add(currentLog);

                        if (item.ItemId == 1)
                        {
                            if (item1Live.Count > 361)
                            {
                                item1Live.RemoveAt(0);
                            }

                            item1Live.Add(log);
                        }
                        else if (item.ItemId == 2)
                        {
                            if (item2Live.Count > 361)
                            {
                                item2Live.RemoveAt(0);
                            }

                            item2Live.Add(log);
                        }
                        else if (item.ItemId == 3)
                        {
                            if (item3Live.Count > 361)
                            {
                                item3Live.RemoveAt(0);
                            }

                            item3Live.Add(log);
                        }
                    }
                    else
                    {
                        if (lastLog.Time_ms != currentLog.Time_ms)
                        {
                            LastTunnelLogs.Remove(lastLog);

                            Log log = new Log();
                            log.ItemId = itemId;
                            log.ItemValue = currentLog.VarValue;
                            log.Date = DateTime.Now;

                            Entities.Logs.Add(log);
                            Entities.SaveChanges();

                            var beforeHash = new StringBuilder();
                            beforeHash.Append(log.LogId);
                            beforeHash.Append(log.ItemId);
                            beforeHash.Append(log.ItemValue);
                            beforeHash.Append(log.Date);

                            var afterHash = ComputeHash(beforeHash.ToString());
                            log.HashValue = afterHash;

                            Entities.SaveChanges();

                            LastTunnelLogs.Add(currentLog);

                            if (item.ItemId == 1)
                            {
                                if (item1Live.Count > 361)
                                {
                                    item1Live.RemoveAt(0);
                                }

                                item1Live.Add(log);
                            }
                            else if (item.ItemId == 2)
                            {
                                if (item2Live.Count > 361)
                                {
                                    item2Live.RemoveAt(0);
                                }

                                item2Live.Add(log);
                            }
                            else if (item.ItemId == 3)
                            {
                                if (item3Live.Count > 361)
                                {
                                    item3Live.RemoveAt(0);
                                }

                                item3Live.Add(log);
                            }
                        }
                    }
                }
            }
        }

        private string ComputeHash(string value)
        {
            var valueB = Encoding.UTF8.GetBytes(value);

            var hash = new SHA256Managed();
            var resultB = hash.ComputeHash(valueB);

            //var result = BitConverter.ToString(resultB);
            //result = result.Replace("-", "");

            var result = Convert.ToBase64String(resultB);

            return result;
        }

        private void ButtonShow_OnClick(object sender, RoutedEventArgs e)
        {
            string itemName = ComboBoxItemName.SelectedItem as string;

            if (string.IsNullOrEmpty(itemName))
            {
                MessageBox.Show("Item Name should be selected.");
                return;
            }

            Item selectedItem = Entities.Items.FirstOrDefault(x => x.ItemName == itemName);

            FromDate = DateTimePickerFrom.SelectedValue;

            if (!FromDate.HasValue)
            {
                MessageBox.Show("From date should be selected.");
                return;
            }

            ToDate = DateTimePickerTo.SelectedValue;

            if (!ToDate.HasValue)
            {
                MessageBox.Show("To date should be selected.");
                return;
            }

            BusyIndicatorChartArchive.IsBusy = true;

            ButtonShow.IsEnabled = false;
            ButtonExport.IsEnabled = false;
            ButtonPrint.IsEnabled = false;

            Thread thread=new Thread(()=>ProcessDataToShowChartArchive(selectedItem));
            thread.Priority=ThreadPriority.AboveNormal;
            thread.Start();
        }

        private void ProcessDataToShowChartArchive(Item item)
        {
            Logs = Entities.Logs.Where(x => x.ItemId == item.ItemId & x.Date >= FromDate & x.Date <= ToDate).ToList();

            if (Logs != null)
            {
                if (Logs.Count > 0)
                {
                    ConcatedHash = "";
                    Min = Logs[0].ItemValue;
                    Max = Logs[0].ItemValue;

                    foreach (Log log in Logs)
                    {
                        ConcatedHash += log.HashValue;

                        if (log.ItemValue < Min)
                        {
                            Min = log.ItemValue;
                        }

                        if (log.ItemValue > Max)
                        {
                            Max = log.ItemValue;
                        }
                    }

                    Dispatcher.BeginInvoke(new Action(() => ProcessDataToShowChartArchive_Completed(item)));
                }
            }
        }

        private void ProcessDataToShowChartArchive_Completed(Item item)
        {
            Chart.DefaultView.ChartTitle.Content = string.Format("{0} - From : {1} - To : {2}", item.ItemName, FromDate, ToDate);
            Chart.ItemsSource = Logs;

            TextBlockMin.Text = Min.ToString();
            TextBlockMax.Text = Max.ToString();
            TextBlockHash.Text = ConcatedHash.ToString();

            ButtonShow.IsEnabled = true;
            ButtonExport.IsEnabled = true;
            ButtonPrint.IsEnabled = true;

            BusyIndicatorChartArchive.IsBusy = false;
        }

        private void ButtonExport_OnClick(object sender, RoutedEventArgs e)
        {
            if (Logs.Count == 0)
            {
                MessageBox.Show("No Data.");
                return;
            }

            SaveFileDialog dialog = new SaveFileDialog();
            dialog.DefaultExt = "*.png";
            dialog.Filter = "Images|*.png;*.bmp;*.jpg";
            if (dialog.ShowDialog() == true)
            {
                Chart.ExportToImage(dialog.FileName);
            }
        }

        private void ButtonPrint_OnClick(object sender, RoutedEventArgs e)
        {
            if (Logs.Count == 0)
            {
                MessageBox.Show("No Data.");
                return;
            }

            var myPicturePath = Environment.GetFolderPath(Environment.SpecialFolder.MyPictures);
            var fileName = string.Format("{0}.jpg", Guid.NewGuid().ToString());
            var filePath = System.IO.Path.Combine(myPicturePath, fileName);

            Chart.ExportToImage(filePath);

            string itemName = Logs[0].Item.ItemName;

            var hashValueForAllData = ComputeHash(ConcatedHash);

            var export = new LogExport()
            {
                ItemName = itemName,
                StartDate = FromDate.ToString(),
                EndDate = ToDate.ToString(),
                Graph = string.Format("File://{0}", filePath),
                HashValue = hashValueForAllData,
                Min = Min.ToString(),
                Max = Max.ToString()
            };

            WindowReport1 windowReport1 = new WindowReport1();
            windowReport1.Export = export;
            windowReport1.ShowDialog();

            // clean junk
            File.Delete(filePath);
        }
    }
}
