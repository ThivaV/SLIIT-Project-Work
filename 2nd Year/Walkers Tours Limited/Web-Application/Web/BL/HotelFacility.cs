using System;
using System.Collections.Generic;
using System.Text;
using DL;
using System.Data;
using System.Data.SqlClient;    

namespace BL
{
    public class HotelFacility
    {
        private int hotelID;
        public int intHotelID
        {
            get { return hotelID; }
            set { hotelID = value; }
        }

        public DataSet DisplayHotelFacility(HotelFacility myHotelFacility)
        {
            SqlConnection sqlcon = new SqlConnection(DL.SQL.constring); 
            try
            {
                SqlDataAdapter sqladpDisplayFac = new SqlDataAdapter("SELECT BedType,BodardType,Price FROM RoomPrices WHERE HotelID = "+myHotelFacility.intHotelID+"",sqlcon);
                DataSet dsFill = new DataSet();
                sqladpDisplayFac.Fill(dsFill, "RoomPrices");
                return dsFill;
            }
            catch(Exception ex)
            {
                throw new System.NotImplementedException(); 
            }
        }
    }
}
