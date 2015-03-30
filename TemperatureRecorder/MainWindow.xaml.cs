﻿using System;
using System.Collections.Generic;
using System.IO;
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
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Windows.Threading;
using Microsoft.Win32;
using Telerik.Windows.Controls.Charting;
using Telerik.Windows.Controls.ChartView;
using Telerik.Windows.Documents.FormatProviders.Pdf;
using Telerik.Windows.Documents.Layout;
using Telerik.Windows.Documents.Model;
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

        private List<TunnelLog> LastTunnelLogs=new List<TunnelLog>();

        private DispatcherTimer Timer1=new DispatcherTimer(DispatcherPriority.Send);

        private TunnelLogs Tunnel=new TunnelLogs();

        private List<Item> Items=new List<Item>();

        TemperatureRecorderEntities Entities=new TemperatureRecorderEntities();
        List<Log> _logs=new List<Log>();
        private DateTime? _fromDate;
        private DateTime? _toDate;

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

        private void MainWindow_OnLoaded(object sender, RoutedEventArgs e)
        {
            Items = Entities.Items.ToList();

            foreach (Item item in Items)
            {
                ComboBoxItemName.Items.Add(item.ItemName);
            }

            Timer1.Interval=new TimeSpan(0,0,0,5);
            Timer1.IsEnabled = true;
            Timer1.Tick += Timer1_Tick;
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
                        Log log=new Log();
                        log.ItemId = itemId;
                        log.ItemValue = currentLog.VarValue;
                        log.Date = DateTime.Now;

                        Entities.Logs.Add(log);
                        Entities.SaveChanges();

                        LastTunnelLogs.Add(currentLog);
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

                            LastTunnelLogs.Add(currentLog);
                        }
                    }
                }
            }
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


            Logs = Entities.Logs.Where(x => x.ItemId == selectedItem.ItemId & x.Date >= FromDate & x.Date <= ToDate).ToList();

            Chart.DefaultView.ChartTitle.Content = string.Format("{0} - From : {1} - To : {2}", itemName, FromDate, ToDate);
            Chart.ItemsSource = Logs;
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
    }
}