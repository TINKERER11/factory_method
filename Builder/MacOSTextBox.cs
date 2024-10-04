using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Builder
{
    class MacOSTextBox : TextBox
    {
        public override void Print()
        {
            Console.WriteLine("MacOS TextBox");
        }
    }
}
