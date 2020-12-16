using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DL;

namespace BL
{
    public class ArrayAccident
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
        private int NoOfAccidents;
        public int intNoOfAccidents
        {
            get { return NoOfAccidents; }
            set { NoOfAccidents = value; }
        }
    }
}
