using System;
using System.Collections.Generic;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using DL;

namespace BL
{
    public class AdminRemove
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

        //Remove User
        //public void selectRemveUsr(AdminRemove MyAdminRemove) 
        //{
        //  //SEARCH USER
        //   SqlConnection sqlcon = new SqlConnection(DL.SQL.constring);
        //   try{
        //    adp = new SqlDataAdapter("SELECT FirstName, LastName, EmployeeNo, NICNo, Address, TelNo, Gender, profileType, password FROM  WTLworkers WHERE (profileType ='" + cmbprofiletype.Text + "')", SqlCon);
        
        //    }
        //    catch (Exception ex)
        //    {
        //        throw new System.NotImplementedException();
        //    }
            }

    }

