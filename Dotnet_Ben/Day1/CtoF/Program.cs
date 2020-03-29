using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CtoF
{
    class Centi
    {
        public void Calc(double c)
        {
            double f;
            f = ((9 * c) / 5) + 32;
            Console.WriteLine("Fahrenheit Value  " +f);
        }
        static void Main(string[] args)
        {
            double c;
            Console.WriteLine("Enter Centigrade Value  ");
            c = Convert.ToDouble(Console.ReadLine());
            Centi obj = new Centi();
            obj.Calc(c);
        }
    }
}
