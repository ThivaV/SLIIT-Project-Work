using System;
using System.Collections.Generic;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using DL;

namespace BL
{
    //Duplicated In CustmerRegisteration
    public class OnlinePay
    {
        private string Passport;
        public string strPassport
        {
            get { return Passport; }
            set { Passport = value; }
        }

        //Duplicated In CustmerRegisteration
        private string CusName;
        public string strCusName
        {
            get { return CusName; }
            set { CusName = value; }
        }

        private string pin;
        public string strPin
        {
            get { return pin; }
            set { pin = value; }
        }

        private string CreditCardType;
        public string strCreditCardType
        {
            get { return CreditCardType; }
            set { CreditCardType = value; }
        }

        //Check Valied Custmer
        public void SavePaymentDetail(OnlinePay myOnlinePay)
        {
            SqlConnection sqlcon = new SqlConnection(DL.SQL.constring);
            try 
            {
                SqlCommand sqlcomSelectOnlinePay = new SqlCommand("INSERT INTO BankAcc(CusName,CreditCardType,pin,PassPort)VALUES('"+myOnlinePay.strCusName+"','"+myOnlinePay.strCreditCardType+"','"+myOnlinePay.strPin+"','"+myOnlinePay.strPassport+"') ", sqlcon); 
                sqlcon.Open();
                sqlcomSelectOnlinePay.ExecuteNonQuery();
                sqlcon.Close();
            }
            catch (Exception ex)
            {
                throw new System.NotImplementedException();
            }
        }
       
        public int GetSerialNo()
        {
            SqlConnection sqlconChk = new SqlConnection(DL.SQL.constring); 
            try
            {
                int  MaxNo = 0;
                SqlCommand sqlcomChk = new SqlCommand("SELECT MAX(SerialNo) FROM BankAcc", sqlconChk);
                sqlconChk.Open(); 
                SqlDataReader sqlRead = sqlcomChk.ExecuteReader();
                while (sqlRead.Read())
                {
                    MaxNo = int.Parse (sqlRead.GetValue(0).ToString());  
                }
                sqlconChk.Close();
                return MaxNo;
            }
            catch (Exception ex)
            {
                throw new System.NotImplementedException(); 
            }
        }

    }
}
