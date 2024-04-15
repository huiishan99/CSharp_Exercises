using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Tools;

namespace HelloWorld
{
    class Program
    {
        static void Main(string[] args)
        {
            double result = Calculator.Mul(3, 4);
            Console.WriteLine(result);
        }
    }
}
