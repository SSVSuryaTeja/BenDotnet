using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Overload1
{
    class Demo
    {
        public void Show(int x)
        {
            Console.WriteLine("Show w.r.t. Integer " +x);
        }
        public void Show(double x)
        {
            Console.WriteLine("Show w.r.t. Double " +x);
        }
        public void Show(string x)
        {
            Console.WriteLine("Show w.r.t. String  "+x);
        }
        public void Show(bool x)
        {
            Console.WriteLine("Show w.r.t. Boolean " +x);
        }
        static void Main(string[] args)
        {
            Demo obj = new Demo();
            obj.Show(12);
            obj.Show(12.99);
            obj.Show("Aditya");
            obj.Show(true);
        }
    }
}
