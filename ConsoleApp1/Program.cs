namespace ConsoleApp1
{
    class Program
    {
        static void Main(string[] args)
        {
            Properties properties = new Properties();
            Properties properties_1 = new Properties();
            int a = properties.Num = int.Parse(Console.ReadLine());
            int b = properties_1.Num = int.Parse(Console.ReadLine());
            Methods methods = new Methods();
            methods.Print(a, b);
            methods.Print(a);
            Console.WriteLine("Введите имя");
            string name = properties_1.Name = Console.ReadLine();
            methods.Print(name);
            methods.Print(b, name);
        }
    }
}
