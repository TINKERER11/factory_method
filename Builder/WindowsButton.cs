using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Builder
{
    class WindowsButton : Button
    {
        public override void Paint()
        {
            Console.WriteLine("Windows Button");
        }
    }
}
