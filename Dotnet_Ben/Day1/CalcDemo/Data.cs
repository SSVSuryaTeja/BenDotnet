using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CalcDemo
{
    class Data
    {
        public void Sum(int a,int b)
        {
            int c = a + b;
            Console.WriteLine("Sum is  " +c);
        }
        static void Main(string[] args)
        {
            int a, b;
            Console.WriteLine("Enter 2 Nos  ");
            a = Convert.ToInt32(Console.ReadLine());
            b = Convert.ToInt32(Console.ReadLine());
            Data obj = new Data();
            obj.Sum(a, b);
        }
    }
}
