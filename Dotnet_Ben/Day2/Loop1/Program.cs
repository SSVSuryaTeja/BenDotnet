using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Loop1
{
    class Demo
    {
        public void Show()
        {
            int i = 0;
            int n = 5;
            while(i < n)
            {
                Console.WriteLine("HI I am Ben...");
                i++;
            }
        }
        static void Main(string[] args)
        {
            Demo obj = new Demo();
            obj.Show();
        }
    }
}
