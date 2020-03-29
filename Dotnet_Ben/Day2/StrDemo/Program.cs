using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StrDemo
{
    class Test
    {
        static void Main(string[] args)
        {
            string s1 = "Ben", s2 = "Ram", s3 = "Sanjay", s4 = "Ben";
            Console.WriteLine(s1.GetHashCode());
            Console.WriteLine(s2.GetHashCode());
            Console.WriteLine(s3.GetHashCode());
            Console.WriteLine(s4.GetHashCode());
        }
    }
}
