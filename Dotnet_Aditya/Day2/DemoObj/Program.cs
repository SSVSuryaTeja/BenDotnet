using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DemoObj
{
    class Employ
    {
        int empno;
        string name;
        double basic;

        public override string ToString()
        {
            return "Employ No " + empno + " Name " + name + " Basic " + basic;
        }
        static void Main(string[] args)
        {
            Employ employ = new Employ();
            employ.empno = 1;
            employ.name = "Aditya";
            employ.basic = 88334;
            Console.WriteLine(employ);
        }
    }
}
