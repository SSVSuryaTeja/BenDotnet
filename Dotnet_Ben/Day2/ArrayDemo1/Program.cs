using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ArrayDemo1
{
    class Demo
    {
        public void Show()
        {
            int[] a = new int[] { 12, 5, 77, 34, 88, 882 };
            foreach(int i in a)
            {
                Console.WriteLine(i);
            }
        }
        static void Main(string[] args)
        {
            Demo obj = new Demo();
            obj.Show();
        }
    }
}
