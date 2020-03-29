using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Quiz3
{
    class Test
    {
        public void Incr(ref int x)
        {
            x++;
        }
        static void Main(string[] args)
        {
            int n = 12;
            Test obj = new Test();
            obj.Incr(ref n);
            Console.WriteLine("N value is  " +n);
        }
    }
}
