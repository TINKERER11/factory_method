using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Builder
{
    abstract class GUIFactory
    {
        public abstract Button CreateButton();
        public abstract TextBox CreateTextBox();
    }
}
