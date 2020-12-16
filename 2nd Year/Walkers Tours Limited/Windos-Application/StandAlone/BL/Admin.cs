using System;
using System.Collections.Generic;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using DL;


namespace BL
{
    public class Admin
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
        private string EmployeeNo;
        public string strEmployeeNo
        {
            get { return EmployeeNo; }
            set { EmployeeNo = value; }
        }
        private string NICNo;
        public string strNICNo
        {
            get { return NICNo; }
            set { NICNo = value; }
        }
        private string Address;
        public string strAddress
        {
            get { return Address; }
            set { Address = value; }
        }
        private int TelNo;
        public int intTelNo
        {
            get { return TelNo; }
            set { TelNo = value; }
        }
        private string Gender;
        public string strGender
        {
            get { return Gender; }
            set { Gender = value; }
        }
        private string profileType;
        public string strProfileType
        {
            get { return profileType; }
            set { profileType = value; }
        }
        private string password;
        public string strPassword
        {
            get { return password; }
            set { password = value; }
        }

        //Add New User
        public void insertAddUsr(Admin myAdmin)
        {
            SqlDataReader Ad = null;
            SqlCommand sqlcominsertAddUsr = null;
            SqlConnection sqlcon = new SqlConnection(DL.SQL.constring);
            try
            {
                String strsql = "insert into WTLworkers(FirstName,LastName,EmployeeNo,NICNo,Address,TelNo,Gender,profileType,password)values('" + myAdmin.strFirstName + "','" + myAdmin.strLastName + "','" + myAdmin.strEmployeeNo + "','" + myAdmin.NICNo + "','" + myAdmin.strAddress + "'," + myAdmin.intTelNo + ",'" + myAdmin.strGender + "','" + myAdmin.strProfileType + "','" + myAdmin.strPassword + "')";
                sqlcominsertAddUsr = new SqlCommand(strsql, sqlcon);
                sqlcon.Open();
                sqlcominsertAddUsr.ExecuteNonQuery();
                //Ad = sqlcominsertAddUsr.ExecuteReader();                
                sqlcon.Close();
                //SqlDataReader com = new sqlcomInsertAddUsr.ExecuteReader();
                //sqlcomInsertAddUsr.ExecuteNonQuery();
                //sqlcon.Close();
            }
            catch (Exception ex)
            {
                throw new System.NotImplementedException();
            }
        }

        ////Remove User
        //public void deleteUsr(Admin myAdmin)
        //{
        //    SqlConnection sqlcon = new SqlConnection(DL.SQL.constring);

        //}

        ////Update User
        //public void updateUsr(Admin myAdmin)
        //{

        //}

        //
    }
}
