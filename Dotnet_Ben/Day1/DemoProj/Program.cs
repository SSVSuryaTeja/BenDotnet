using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DemoProj
{
    class Data
    {
        public void SayHello()
        {
            Console.WriteLine("Hello World...");
        }
        internal void Topic()
        {
            Console.WriteLine("Topic is Access Modifiers ");
        }
        private void Timing()
        {
            Console.WriteLine("Its from 10 PM PST");
        }
    }
    class Program
    {
        static void Main(string[] args)
        {
            Data obj = new Data();
            obj.SayHello();
            obj.Topic();
        }
    }
}
