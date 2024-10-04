using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Builder
{
    class WindowsTextBox : TextBox
    {
        public override void Print()
        {
            Console.WriteLine("Windows TextBox");
        }
    }
}
