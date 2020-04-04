using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StrArrayDemo
{
    class Demo
    {
        public void Show()
        {
            string[] names = new string[] 
                    {
                        "Ram",
                        "Gopi",
                        "Aditya",
                        "Krishna",
                        "Prasad"
                    };
            Console.WriteLine("Names are  ");
            foreach(string s in names)
            {
                Console.WriteLine(s);
            }
        }
        static void Main(string[] args)
        {
            Demo obj = new Demo();
            obj.Show();
        }
    }
}
