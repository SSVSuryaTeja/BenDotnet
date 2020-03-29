﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FactDemo
{
    class Fact
    {
        public void Calc(int n)
        {
            int f = 1;
            int i = 1;
            while(i <= n)
            {
                f = f * i;
                i++;
            }
            Console.WriteLine("Factorial Value  " +f);
        }
        static void Main(string[] args)
        {
            int n;
            Console.WriteLine("Enter N value   ");
            n = Convert.ToInt32(Console.ReadLine());
            Fact obj = new Fact();
            obj.Calc(n);
        }
    }
}
