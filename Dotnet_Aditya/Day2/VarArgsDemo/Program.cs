using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace VarArgsDemo
{
    class Demo
    {
        public void Attendance(params string[] students)
        {
            foreach(string s in students)
            {
                Console.Write(s + "   ");
            }
            Console.WriteLine();
        }
        static void Main(string[] args)
        {
            Demo obj = new Demo();
            obj.Attendance();
            obj.Attendance("Aditya");
            obj.Attendance("Aditya", "Ram");
            obj.Attendance("Aditya", "Ram", "Kalyan");
        }
    }
}
