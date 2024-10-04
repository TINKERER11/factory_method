using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Builder
{
    class WindowsFactory : GUIFactory 
    {
        public override Button CreateButton()
        {
            return new WindowsButton();
        }
        public override TextBox CreateTextBox()
        {
            return new WindowsTextBox();
        }
    }
}
