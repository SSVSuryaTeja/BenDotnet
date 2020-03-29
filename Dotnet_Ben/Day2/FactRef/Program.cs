using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FactRef
{
    class Fact
    {
        public void Calc(int n, ref int f)
        {
            for(int i = 1; i <= n; i++)
            {
                f = f * i;
            }
        }
        static void Main(string[] args)
        {
            int n;
            Console.WriteLine("Enter N value  ");
            n = Convert.ToInt32(Console.ReadLine());
            int f = 1;
            Fact obj = new Fact();
            obj.Calc(n, ref f);
            Console.WriteLine("Factorial Value  " +f);
        }
    }
}
