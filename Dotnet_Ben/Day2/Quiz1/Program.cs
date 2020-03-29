using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Quiz1
{
    class Data
    {
        int n;
        static void Main(string[] args)
        {
            Data obj1 = new Data();
            obj1.n = 12;
            Data obj2 = obj1;
            obj2.n = 13;
            Console.WriteLine(obj1.n);
            Console.WriteLine(obj1.GetHashCode());
            Console.WriteLine(obj2.GetHashCode());
        }
    }
}
