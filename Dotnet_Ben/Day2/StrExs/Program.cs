using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StrExs
{
    class StrDemo
    {
        public void Show()
        {
            string[] names = new string[] {"Ben","Diksha","Nalin","Manoj","Raj" };
            foreach(string s in names)
            {
                Console.WriteLine(s);
            }
        }
        static void Main(string[] args)
        {
            StrDemo obj = new StrDemo();
            obj.Show();
        }
    }
}
