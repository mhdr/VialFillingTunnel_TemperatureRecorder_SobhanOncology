using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TemperatureRecorder
{
    public class LogExport
    {
        public string ItemName { get; set; }
        public string StartDate { get; set; }
        public string EndDate { get; set; }
        public string Graph { get; set; }
        public string HashValue { get; set; }
        public string Min { get; set; }
        public string Max { get; set; }
    }
}
