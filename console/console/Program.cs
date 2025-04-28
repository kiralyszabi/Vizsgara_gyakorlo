using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.IO;
using NetworkHelper;
using Newtonsoft;

namespace console
{
    public class Program
    {
        static void Main(string[] args)
        {
            List<ingatlanok> ingatlantomb = Backend.GET("http://localhost:3000/ingatlanok").Send().ToList<ingatlanok>();

            var falazat = ingatlantomb.GroupBy(x => x.falazat).OrderBy(x => x.Count()).ToList();
            foreach (var item in falazat)
            {
                Console.WriteLine($"{item.Key} tipus {item.Count()} db van");
            }

            Console.Write("Ad meg egy szót: ");
            string bemenet = Console.ReadLine();
            foreach (var item in ingatlantomb)
            {

                if (item.kozterulet.ToLower().Contains(bemenet.ToLower()))
                {
                    Console.WriteLine($"{item.kozterulet} {item.hazszam}");
                }

            }
            Console.WriteLine($"Nem szerepel");

            var lakasok = ingatlantomb.Where(x=>x.lakas==1).Count();
            File.WriteAllText("lakasok.txt",Convert.ToString(lakasok));




            Console.ReadKey();
        }
    }
}
