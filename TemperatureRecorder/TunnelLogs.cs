using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TemperatureRecorder
{
    public class TunnelLogs
    {
               private string _tableName="TunnelLog0";
        private SqlConnection _connection;


        public string TableName
        {
            get { return _tableName; }
            set { _tableName = value; }
        }

        public SqlConnection Connection
        {
            get { return _connection; }
            set { _connection = value; }
        }


        public List<TunnelLog> GetValues()
        {
            Table table = new Table(Statics.WinCC_ConnectionString,this.TableName);

            var result = new List<TunnelLog>();

            foreach (DataRow row in table.DataTable.Rows)
            {
                TunnelLog item = new TunnelLog();
                item.VarName = row["VarName"] as string;
                item.TimeString = row["TimeString"] as string;
                item.VarValue = (float) row["VarValue"];
                item.Validity = (int) row["Validity"];
                item.Time_ms = (float) row["Time_ms"];
                result.Add(item);
            }

            return result;
        }


        public List<TunnelLog> GetValues(Func<TunnelLog, bool> predicate)
        {
            Table table = new Table(Statics.WinCC_ConnectionString, this.TableName);

            var result = new List<TunnelLog>();


            foreach (DataRow row in table.DataTable.Rows)
            {
                TunnelLog item = new TunnelLog();
                item.VarName = row["VarName"] as string;
                item.TimeString = row["TimeString"] as string;
                item.VarValue = (float)row["VarValue"];
                item.Validity = (int)row["Validity"];
                item.Time_ms = (float)row["Time_ms"];

                if (predicate(item))
                {
                    result.Add(item);
                }
            }

            return result;
        }

        public TunnelLog GetValue(Func<TunnelLog, bool> predicate)
        {
            Table table = new Table(Statics.WinCC_ConnectionString, this.TableName);

            foreach (DataRow row in table.DataTable.Rows)
            {
                TunnelLog item = new TunnelLog();
                item.VarName = row["VarName"] as string;
                item.TimeString = row["TimeString"] as string;
                item.VarValue =Convert.ToDouble(row["VarValue"]) ;
                item.Validity = Convert.ToInt32(row["Validity"]);
                item.Time_ms = Convert.ToDouble(row["Time_ms"]);

                if (predicate(item))
                {
                    return item;
                }
            }

            return null;
        }
    }
}
