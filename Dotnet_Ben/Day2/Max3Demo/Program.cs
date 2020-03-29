using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Max3Demo
{
    class Data
    {
        public void Max3(int a,int b,int c)
        {
            int m = a;
            if(m < b)
            {
                m = b;
            }
            if(m < c)
            {
                m = c;
            }
            Console.WriteLine("Maximum Value   " +m);
        }
        static void Main(string[] args)
        {
            int a, b, c;
            Console.WriteLine("Enter 3 Nos   ");
            a = Convert.ToInt32(Console.ReadLine());
            b = Convert.ToInt32(Console.ReadLine());
            c = Convert.ToInt32(Console.ReadLine());
            Data obj = new Data();
            obj.Max3(a, b, c);
        }
    }
}
