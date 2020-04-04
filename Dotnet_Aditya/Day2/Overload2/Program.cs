using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Overload2
{
    class Demo
    {
        public int Sum()
        {
            return 5;
        }
        public int Sum(int x)
        {
            return x + 5;
        }

        public int Sum(int x,int y)
        {
            return x + y;
        }
        static void Main(string[] args)
        {
            Demo obj = new Demo();
            Console.WriteLine("Sum w.r.t. Zero Args  " +obj.Sum());
            Console.WriteLine("Sum w.r.t. One Arg  " +obj.Sum(56));
            Console.WriteLine("Sum w.r.t. Two Args  " +obj.Sum(66,12));
        }
    }
}
