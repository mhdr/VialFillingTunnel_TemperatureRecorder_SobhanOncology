using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GenerateData
{
    class Program
    {
        static void Main(string[] args)
        {
            TemperatureRecorderEntities entities=new TemperatureRecorderEntities();

            Item item1=new Item();
            item1.ItemId = 1;
            item1.ItemName = "Temperature 1";

            Item item2 = new Item();
            item2.ItemId = 2;
            item2.ItemName = "Temperature 2";

            Item item3 = new Item();
            item3.ItemId = 3;
            item3.ItemName = "Temperature 3";

            entities.Items.Add(item1);
            entities.Items.Add(item2);
            entities.Items.Add(item3);
            entities.SaveChanges();

            DateTime date = DateTime.Now - new TimeSpan(0, 1, 0, 0);

            for (int i = 0; i < 1000; i++)
            {
                date = date + new TimeSpan(0, 0, 0, 3);

                foreach (Item item in entities.Items.ToList())
                {
                    Log log = new Log();

                    Random random = new Random(i);

                    log.ItemId = item.ItemId;
                    log.Date = date;
                    log.ItemValue = random.NextDouble() * 100;
                    log.HashValue = "";

                    entities.Logs.Add(log);
                    entities.SaveChanges();
                }
            }
        }
    }
}
