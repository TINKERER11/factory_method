using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace patterns
{
    class SedanFactory : CarFactory
    {
        public override Car CreateCar()
        {
            return new Sedan();
        }
    }
}
