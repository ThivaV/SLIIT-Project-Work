using System;
using System.Collections.Generic;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using DL;   

namespace BL
{
    public class RoomReserversation
    {
        private string HotelID;
        public string intHotelID
        {
            get { return HotelID; }
            set { HotelID = value; }
        }

        private DateTime BookingDate;
        public DateTime dtBookingDate
        {
            get { return BookingDate; }
            set { BookingDate = value; }
        }

        private int ID;
        public int intID
        {
            get { return ID; }
            set { ID = value; }
        }

        private string MealType;
        public string strMealType
        {
            get { return MealType; }
            set { MealType = value; }
        }

        private string RoomType;
        public string strRoomType
        {
            get { return RoomType; }
            set { RoomType = value; }
        }

        private string GuiType;
        public string strGuiType
        {
            get { return GuiType; }
            set { GuiType = value; }
        }

        private string VehType;
        public string strVehType
        {
            get { return VehType; }
            set { VehType = value; }
        }

        private string Place;
        public string strPlace
        {
            get { return Place; }
            set { Place = value; }
        }

        public int GetVisitorID()
        {
            SqlConnection sqlconMaxNo = new SqlConnection(DL.SQL.constring); 
            try
            {
                string tem = string.Empty;
                SqlCommand sqlComMax = new SqlCommand("SELECT MAX(ID) FROM CusSelect", sqlconMaxNo);
                sqlconMaxNo.Open(); 
                SqlDataReader sqlReadMax = sqlComMax.ExecuteReader();
                while (sqlReadMax.Read() )
                {
                    tem = sqlReadMax.GetValue(0).ToString(); 
                }
                sqlconMaxNo.Close(); 
                int maxID = 0;
                maxID = int.Parse(tem);
                return maxID;
                
            }
            catch (Exception ex)
            {
                throw new System.NotImplementedException(); 
            }
        }

        public void insertRooomReservation(RoomReserversation myRoomReserversation)
        {
            SqlConnection sqlcon = new SqlConnection(DL.SQL.constring);
            try
            {
                SqlCommand sqlcomInsertRoomReservation = new SqlCommand("insert into CusSelect(HotelID,ID,BookingDate,MealType,RoomType,GuiType,VehType,Place)values('" + myRoomReserversation.intHotelID + "'," + myRoomReserversation.intID + ",'" + myRoomReserversation.dtBookingDate + "','" + myRoomReserversation.strMealType + "','" + myRoomReserversation.strRoomType  + "','" + myRoomReserversation.strGuiType  + "','" + myRoomReserversation.strVehType  + "','" + myRoomReserversation.strPlace + "')", sqlcon);
                sqlcon.Open();
                sqlcomInsertRoomReservation.ExecuteNonQuery();
                sqlcon.Close();
            }
            catch (Exception ex)
            {
                throw new System.NotImplementedException();
            }
        }
    }


}
