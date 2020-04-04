using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OutExDemo1
{
    class Demo
    {
        public void Show(int empno,out string name,out double basic)
        {
            name = string.Empty;
            basic = 0;
            if (empno == 1)
            {
                name = "Aditya";
                basic = 88444;
            }
            else if (empno == 3)
            {
                name = "Gopi";
                basic = 88522;
            }
            else
            {
                name = "Not Found";
                basic = 0;
            }
        }
        static void Main(string[] args)
        {
            int empno = 5;
            string name;
            double basic;
            Demo obj = new Demo();
            obj.Show(empno, out name, out basic);
            Console.WriteLine("Name is  "+name);
            Console.WriteLine("Basic is  " +basic);
        }
    }
}
