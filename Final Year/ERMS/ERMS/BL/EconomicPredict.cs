using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DL;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace BL
{
    public class EconomicPredict
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

        /// <summary>
        /// Predict Future GDP
        /// <summary>

        ArrayList myArrayGDP = new ArrayList();
        int indexGDP = 0;

        int total = 0;
        double PredictPop = 0.0;
        int DbYear = 0;
        int LoopForYr = 0;

        int CurrentYr = DateTime.Now.Year;

        public ArrayList FindGDP(EconomicPredict myEconomicPredict)
        {
            // --- DB Connection ---
            SqlConnection sqlConn = new SqlConnection(DL.SQL.conn);
            SqlDataReader sqlRdr = null;

            EconomicPredict objEconomicPredict = new EconomicPredict();

            try
            {
                sqlConn.Open();
                // -----------------
                SqlCommand sqlCom = new SqlCommand("GDPPredictor", sqlConn);
                sqlCom.CommandType = CommandType.StoredProcedure;
                sqlCom.Parameters.Add("@InsetedYear", myEconomicPredict.intYear);
                sqlRdr = sqlCom.ExecuteReader();
                // -----------------

                while (sqlRdr.Read())
                {
                    ArrayEconomic objArrayEconomic = new ArrayEconomic();

                    objArrayEconomic.intYear = Convert.ToInt16(sqlRdr["Year"]);
                    objArrayEconomic.strNationalGDP=sqlRdr["NationalGDP"].ToString();
                    objArrayEconomic.strTransportGDP = sqlRdr["TransportGDP"].ToString();
                    
                    myArrayGDP.Insert(indexGDP, objArrayEconomic);
                    indexGDP = indexGDP + 1;
                }
            }
            catch(Exception ex)
            {
            }
            return myArrayGDP;
        }
    }
}
