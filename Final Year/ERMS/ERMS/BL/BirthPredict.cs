using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DL;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace BL
{
    public class BirthPredict
    {
        private int BirthYear;
        public int intBirthYear
        {
          get { return BirthYear; }
          set { BirthYear = value; }
        }
        private string Country;
        public string strCountry
        {
            get { return Country; }
            set { Country = value; }
        }
        private string District;
        public string strDistrict
        {
            get { return District; }
            set { District = value; }
        }
        private int Count;
        public int intCount
        {
            get { return Count; }
            set { Count = value; }
        }

        public void GetMinMaxYear(BirthPredict myBirthPredict) 
        {
            SqlConnection sqlcon = new SqlConnection(DL.SQL.conn);
            SqlDataReader drMax = null;

            try
            {
                sqlcon.Open();
                //------------------------------------------------------
                SqlCommand sqlcom = new System.Data.SqlClient.SqlCommand("SELECT BirthYear,Count FROM tblBirth Where District = '"+ myBirthPredict.strDistrict +"' AND BirthYear = (Select Min(BirthYear) From tblBirth)", sqlcon);
                drMax = sqlcom.ExecuteReader();
                drMax.Read();

                intBirthYear = Convert.ToInt16(drMax["BirthYear"]);
                intCount = Convert.ToInt16(drMax["Count"]);
                
                drMax.Close();
                //------------------------------------------------------


                sqlcon.Close();
            }
            catch (Exception ex)
            {
               
            }
        }

        /// <summary>
        /// Bind tblBirth --> District values...Bind in ESA-2.aspx -->> ddlDistrict
        /// Class in BL is BirthPredict.
        /// Function in BirthPredict is BindDistrict.
        /// </summary>
        public DataTable GetBindDistrict(BirthPredict BindBirthPredict) 
        {
            SqlConnection sqlcon = new SqlConnection(DL.SQL.conn);
            SqlDataReader drMax = null;

            DataTable BindDTDistrict = new DataTable();

            try
            {
                sqlcon.Open();
                //------------------------------------------------------
                SqlCommand cmd = new SqlCommand("GetDistrict", sqlcon);
                cmd.CommandType = CommandType.StoredProcedure;
                
                // Execute the Command
                drMax = cmd.ExecuteReader();
                drMax.Close();

                using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                {
                    da.Fill(BindDTDistrict);
                }

                //------------------------------------------------------

                sqlcon.Close();
            }
            catch (Exception ex)
            {
               
            }
            return BindDTDistrict;
        }
    }
}
