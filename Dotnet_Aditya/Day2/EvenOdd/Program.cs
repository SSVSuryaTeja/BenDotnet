using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EvenOdd
{
    class Data
    {
        public void Check(int n)
        {
            if (n % 2 == 0)
            {
                Console.WriteLine("Even Number...");
            }
            else
            {
                Console.WriteLine("Odd Number...");
            }
        }
        static void Main(string[] args)
        {
            int n;
            Console.WriteLine("Enter a Number  ");
            n = Convert.ToInt32(Console.ReadLine());
            Data obj = new Data();
            obj.Check(n);
        }
    }
}
