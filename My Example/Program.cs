using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace My_Example
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Calculator c = new Calculator();
            int result = c.SumFrom1ToX(3);
            Console.WriteLine(result);
        }
    }

    class Calculator
    {
        //public void PrintXTo1(int x)
        //{
        //    for (int i = x; i > 0; i--)
        //    {
        //        Console.WriteLine(i);
        //    }
        //}
        //public void PrintXTo1(int x) 
        //{
        //    if (x == 1)
        //    {
        //        Console.WriteLine(x);
        //    }
        //    else
        //    {
        //        Console.WriteLine(x);
        //        PrintXTo1(x - 1);
        //    }
        //}
        //public int SumFrom1ToX(int x) 
        //{
        //    int result = 0;
        //    for (int i = 1; i < x+1; i++)
        //    {
        //        result= result+i;
        //    }
        //    return result;
        //}
        //public int SumFrom1ToX(int x)
        //{
        //    if (x == 1)
        //    {
        //        return 1;
        //    }
        //    else
        //    {
        //        int result = x + SumFrom1ToX(x-1);
        //        return result;
        //    }
        //}
        public int SumFrom1ToX(int x)
        {
            return (1 + x) * x / 2;
        }
    }
}
