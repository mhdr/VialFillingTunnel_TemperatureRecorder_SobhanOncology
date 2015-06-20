using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Threading.Tasks;

namespace GenerateData
{
    class Program
    {
        static void Main(string[] args)
        {
            TemperatureRecorderEntities entities=new TemperatureRecorderEntities();


            DateTime starTime=new DateTime(2015,6,9,10,0,0);
            DateTime endTime = new DateTime(2015, 6, 9, 14, 0, 0);

            var data3 = entities.Logs.ToList();
            var data2 = data3.Where(x=> x.ItemId==2);
            var data = data2.Where(x => x.Date >= starTime & x.Date <= endTime);

            foreach (Log log in data)
            {
                Log newLog=new Log();
                newLog.ItemId = 2;
                newLog.ItemValue = log.ItemValue;
                newLog.Date = log.Date + new TimeSpan(5, 0, 0, 0)-new TimeSpan(1,0,0);

                entities.Logs.Add(newLog);
                entities.SaveChanges();

                var beforeHash = new StringBuilder();
                beforeHash.Append(newLog.LogId);
                beforeHash.Append(newLog.ItemId);
                beforeHash.Append(newLog.ItemValue);
                beforeHash.Append(newLog.Date);

                var afterHash = ComputeHash(beforeHash.ToString());
                newLog.HashValue = afterHash;

                entities.SaveChanges();
            }
        }

        private static string ComputeHash(string value)
        {
            var valueB = Encoding.UTF8.GetBytes(value);
            var hash = new SHA256Managed();
            //var hash = MD5.Create();
            var resultB = hash.ComputeHash(valueB);

            var result = Convert.ToBase64String(resultB);

            return result;
        }
    }
}
