using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ParamDemo
{
    class Demo
    {
        public void Show(params string[] names)
        {
            foreach(string s in names)
            {
                Console.Write(s + " ");
            }
            Console.WriteLine();
        }
        static void Main(string[] args)
        {
            Demo obj = new Demo();
            obj.Show();
            obj.Show("Ben");
            obj.Show("Ben", "Mahbub");
            obj.Show("Ben", "Mahbub", "Diksha");
        }
    }
}
