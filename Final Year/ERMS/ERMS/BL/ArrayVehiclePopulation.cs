using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace BL
{
    public class ArrayVehiclePopulation
    {
        private string ElementType;
        public string strElementType
        {
            get { return ElementType; }
            set { ElementType = value; }
        }
        private int Year;
        public int intYear
        {
            get { return Year; }
            set { Year = value; }
        }
        private double NoOfVeh;
        public double doubleNoOfVeh
        {
            get { return NoOfVeh; }
            set { NoOfVeh = value; }
        }
    }
}
