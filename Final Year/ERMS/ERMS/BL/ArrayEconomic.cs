using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace BL
{
    public class ArrayEconomic
    {
        private string Country;
        public string strCountry
        {
            get { return Country; }
            set { Country = value; }
        }
        private int Year;
        public int intYear
        {
            get { return Year; }
            set { Year = value; }
        }
        private string NationalGDP;
        public string strNationalGDP
        {
            get { return NationalGDP; }
            set { NationalGDP = value; }
        }
        private string TransportGDP;
        public string strTransportGDP
        {
            get { return TransportGDP; }
            set { TransportGDP = value; }
        }
    }
}
