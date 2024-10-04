using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp1
{
    class Methods
    {
        public void Print(int a, int b)
        {
            Console.WriteLine($"Сумма цифр {a} + {b} = {a + b}");
        }
        public void Print(int a)
        {
            Console.WriteLine($"Квадрат числа {a} равен {a * a}");
        }
        public void Print()
        {
            Console.WriteLine("Числа не введены...");
        }
        public void Print(string name)
        {
            Console.WriteLine($"Ваше имя {name}");
        }
        public void Print(int a, string name)
        {
            Console.WriteLine($"ID {a}, имя {name}");
        }
    }
}
