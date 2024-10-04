using System.Runtime.InteropServices;

namespace Builder
{
    class Program
    {
        static void create(GUIFactory factory)
        {
            Button button = factory.CreateButton();
            TextBox textBox = factory.CreateTextBox();
            button.Paint();
            textBox.Print();
        }
        static void Main(string[] args)
        {
            WindowsFactory winfactory = new WindowsFactory();
            MacOSFactory macOSFactory = new MacOSFactory();
            create(winfactory);
            create(macOSFactory);
        }
    }
}
