using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Prog1
{
    class Demo
    {
        public void SayHello()
        {
            Console.WriteLine("Welcome to Dotnet Programming...");
        }
        internal void Topic()
        {
            Console.WriteLine("Core C# Topic is going on...");
        }

        private void Timing()
        {
            Console.WriteLine("Timing 9.30 PM IST");
        }
    }
    class Program
    {
        static void Main(string[] args)
        {
            Demo obj = new Demo();
            obj.SayHello();
            obj.Topic();
        }
    }
}
