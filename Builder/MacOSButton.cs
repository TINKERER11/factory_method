using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Builder
{
    class MacOSButton : Button
    {
        public override void Paint()
        {
            Console.WriteLine("MacOS Button");
        }
    }
}
