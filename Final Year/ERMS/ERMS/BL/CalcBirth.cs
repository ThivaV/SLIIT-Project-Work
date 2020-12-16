using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DL;
using System.Data;
using System.Data.SqlClient;

namespace BL
{
    public class CalcBirth
    {
        private int CurrntYr;
        public int intCurrntYr
        {
            get { return CurrntYr; }
            set { CurrntYr = value; }
        }
        private double CalcValue;
        public double doubleCalcValue
        {
            get { return CalcValue; }
            set { CalcValue = value; }
        }
        private string District;
        public string strDistrict
        {
            get { return District; }
            set { District = value; }
        }

        public DataTable GetSPValues(CalcBirth myCalcBirth) 
        {
            SqlConnection sqlcon = new SqlConnection(DL.SQL.conn);
            SqlDataReader drMax = null;

            DataTable DT2 = new DataTable();

            try
            {
                sqlcon.Open();
                //------------------------------------------------------
                SqlCommand cmd = new SqlCommand("BirthPredictor", sqlcon);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add(new SqlParameter("@SelectedRegion", myCalcBirth.strDistrict));
                
                // Execute the Command
                drMax = cmd.ExecuteReader();
                drMax.Close();

                using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                {
                    da.Fill(DT2);
                } 
                               
                //------------------------------------------------------

                sqlcon.Close();
            }
            catch (Exception ex)
            {
                //throw new System.NotImplementedException();
            }
            return DT2;
        }
    }
}
