using System;
using System.Collections.Generic;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using DL;

namespace BL
{
    public class CustmerRegisteration
    {
        private string FirstName;
        public string strFirstName
        {
            get { return FirstName; }
            set { FirstName = value; }
        }

        private string LastName;
        public string strLastName
        {
            get { return LastName; }
            set { LastName = value; }
        }
        //Duplicated--In CustermerTable
        private string Passport;
        public string strPassport
        {
            get { return Passport; }
            set { Passport = value; }
        }

        private string Address;
        public string strAddress
        {
            get { return Address; }
            set { Address = value; }
        }

        private string country;
        public string strCountry
        {
            get { return country; }
            set { country = value; }
        }

        private string TelNo;
        public string strTelNo
        {
            get { return TelNo; }
            set { TelNo = value; }
        }

        private string Email;
        public string strEmail
        {
            get { return Email; }
            set { Email = value; }
        }

        private DateTime StartDte;
        public DateTime dteTimeStartDte
        {
            get { return StartDte; }
            set { StartDte = value; }
        }

        private float DuartionSty;
        public float flotDuartionSty
        {
            get { return DuartionSty; }
            set { DuartionSty = value; }
        }

        private string Comments;
        public string strComments
        {
            get { return Comments; }
            set { Comments = value; }
        }

        public void insertCustmerRegisteration(CustmerRegisteration myCustmerRegisteration)
        {
            SqlConnection sqlcon = new SqlConnection(DL.SQL.constring);
            try
            {
                SqlCommand sqlcomInsertCustmerRegisteration = new SqlCommand("insert into CusRegister(FirstName,LastName,Passport,Address,country,TelNo,Email,StartDte,DuartionSty,Comments)values('" + myCustmerRegisteration.strFirstName + "','" + myCustmerRegisteration.strLastName + "','" + myCustmerRegisteration.strPassport + "','" + myCustmerRegisteration.strAddress + "','" + myCustmerRegisteration.strCountry + "','" + myCustmerRegisteration.strTelNo + "','" + myCustmerRegisteration.strEmail + "','" + myCustmerRegisteration.dteTimeStartDte + "'," + myCustmerRegisteration.flotDuartionSty + ",'" + myCustmerRegisteration.strComments + "')", sqlcon);
                sqlcon.Open();
                sqlcomInsertCustmerRegisteration.ExecuteNonQuery();
                sqlcon.Close();
            }
            catch (Exception ex)
            {
                throw new System.NotImplementedException();
            }

        }
        public DataSet DisplayReservationDetails(int ID )
        {
            SqlConnection sqlconView = new SqlConnection(DL.SQL.constring); 
            try
            {
                SqlDataAdapter sqlAdpReservation = new SqlDataAdapter("SELECT  convert(varchar(10),BookingDate,111)as Date,HotelID as Step,Place, MealType,  RoomType, GuiType, VehType  FROM dbo.CusSelect  where ID = " + ID + " ", sqlconView);
                DataSet dsViewReser = new DataSet();
                sqlAdpReservation.Fill(dsViewReser, "CusSelect");
                return dsViewReser;
            }
            catch (Exception ex)
            {
                throw new System.NotImplementedException(); 
            }
        }
    }
}
