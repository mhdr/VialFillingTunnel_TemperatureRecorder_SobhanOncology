using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TemperatureRecorder
{
    public class TunnelLog
    {
        public string VarName { get; set; }
        public string TimeString { get; set; }
        public double VarValue { get; set; }
        public int Validity { get; set; }
        public double Time_ms { get; set; }
    }
}
