using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace BL
{
    public class ArrayTraffic
    {
        private string Region;
        public string strRegion
        {
            get { return Region; }
            set { Region = value; }
        }
        private int Year;
        public int intYear
        {
            get { return Year; }
            set { Year = value; }
        }
        private string Month;
        public string strMonth
        {
            get { return Month; }
            set { Month = value; }
        }
        private double NoOfVehicles;
        public double doubleNoOfVehicles
        {
            get { return NoOfVehicles; }
            set { NoOfVehicles = value; }
        }
        private string SplitTime;
        public string strSplitTime
        {
            get { return SplitTime; }
            set { SplitTime = value; }
        }
    }
}
