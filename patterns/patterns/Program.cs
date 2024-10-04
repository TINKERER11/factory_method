namespace patterns
{
    internal class Program
    {
        static void Main(string[] args)
        {
            CarFactory sedanFactory = new SedanFactory();
            Car sedan = sedanFactory.CreateCar();
            sedan.Drive();

            CarFactory bmwFactory = new BMWFactory();
            Car bmw = bmwFactory.CreateCar();
            bmw.Drive();
        }
    }
}
