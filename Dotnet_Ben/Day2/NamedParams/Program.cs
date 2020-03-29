using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace NamedParams
{
    class Demo
    {
        public void Show(string firstName,string lastName,string state,string city)
        {
            Console.WriteLine("First Name  " +firstName);
            Console.WriteLine("Last Name  " +lastName);
            Console.WriteLine("City  " +city);
            Console.WriteLine("State  " +state);
        }
        static void Main(string[] args)
        {
            Demo obj = new Demo();
            obj.Show(city:"Parlin", state:"NJ", firstName:"Ben", lastName:"Mahbub");
        }
    }
}
