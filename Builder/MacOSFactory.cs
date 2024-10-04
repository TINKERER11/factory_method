using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Builder
{
    internal class MacOSFactory : GUIFactory
    {
        public override Button CreateButton()
        {
            return new MacOSButton();
        }
        public override TextBox CreateTextBox()
        {
            return new MacOSTextBox();
        }
    }
}
