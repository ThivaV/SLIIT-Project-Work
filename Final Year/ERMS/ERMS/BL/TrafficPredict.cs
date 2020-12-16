using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DL;
using System.Collections;
using System.Data;
using System.Data.SqlClient;

namespace BL
{
    public class TrafficPredict
    {
        private string Region;
        public string strRegion
        {
            get { return Region; }
            set { Region = value; }
        }
        private int Year;
        public int intYear
        {
            get { return Year; }
            set { Year = value; }
        }
        private string Month;
        public string strMonth
        {
            get { return Month; }
            set { Month = value; }
        }
        private double NoOfVehicles;
        public double doubleNoOfVehicles
        {
            get { return NoOfVehicles; }
            set { NoOfVehicles = value; }
        }
        private string SplitTime;
        public string strSplitTime
        {
            get { return SplitTime; }
            set { SplitTime = value; }
        }

        /// <summary>
        /// Predict Future Traffic
        /// <summary>

        ArrayList myArrayTraffic = new ArrayList();
        int indexArrTraffic = 0;

        double PredictTraffic = 0.0;
        int DbYear = 0;
        int LoopForYr = 0;

        int CurrentYr = DateTime.Now.Year;

        public ArrayList FindTraffic(TrafficPredict myTrafficPredict)
        {
            // --- DB Connection ---
            SqlConnection sqlConn = new SqlConnection(DL.SQL.conn);
            SqlDataReader sqlRdr = null;

            TrafficPredict objTrafficPredict = new TrafficPredict();

            try 
            {
                sqlConn.Open();
                // -----------------
                SqlCommand sqlCom = new SqlCommand("TrafficPredictor", sqlConn);
                sqlCom.CommandType = CommandType.StoredProcedure;
                sqlRdr = sqlCom.ExecuteReader();
                // -----------------

                while (sqlRdr.Read())
                {
                    ArrayTraffic objTraffic = new ArrayTraffic();

                    objTraffic.intYear = Convert.ToInt16(sqlRdr["Year"]);
                    objTraffic.doubleNoOfVehicles = Convert.ToDouble(sqlRdr["TotalTraffic"]);

                    LoopForYr = Convert.ToInt16(sqlRdr["Year"]);

                    myArrayTraffic.Insert(indexArrTraffic, objTraffic);
                    indexArrTraffic = indexArrTraffic + 1;
                }

                // --- Insert Year ---
                int FutureYr = myTrafficPredict.intYear;
                // --- Find The Loop Count ---
                int loopCount = FutureYr - LoopForYr;

                for (int j = 0; j < loopCount; j++)
                {
                    // --- Get the Oldest Value From the ArrayList ---
                    ArrayTraffic objOldestVal = (ArrayTraffic)(myArrayTraffic[0]);
                    double OldestVal = objOldestVal.doubleNoOfVehicles;
                    // -----------------------------------------------

                    // --- Get the Newest Value From the ArrayList ---
                    int NearestYrVal = myArrayTraffic.Count;
                    NearestYrVal--;
                    ArrayTraffic objNewVal = (ArrayTraffic)(myArrayTraffic[NearestYrVal]);
                    double NewVal = objNewVal.doubleNoOfVehicles;
                    DbYear = objNewVal.intYear;
                    // -----------------------------------------------

                    // --- Insert The Calc Value To Array ---
                    DbYear++;

                    // --- Algo ---                    
                    double Predicton = NewVal * Math.Exp((Math.Log((NewVal / OldestVal), Math.Exp(1)) / 4) * 1);
                    PredictTraffic = Predicton;
                    // --- Algo ---

                    // --- Insert The Calc Value To Array ---
                    ArrayTraffic objArrTrafficInsert = new ArrayTraffic();
                    objArrTrafficInsert.intYear = DbYear;
                    objArrTrafficInsert.doubleNoOfVehicles = PredictTraffic;
                    myArrayTraffic.Insert((myArrayTraffic.Count), objArrTrafficInsert);
                    // --- Insert The Calc Value To Array ---
                }
            }
            catch(Exception ex)
            {
            }
            return myArrayTraffic;
        }

        /// <summary>
        /// Traffic By Time...Non Predict
        /// </summary>
        public ArrayList DisplyTraffic(TrafficPredict myTrafficDis)
        {
            // --- DB Connection ---
            SqlConnection sqlConn = new SqlConnection(DL.SQL.conn);
            sqlConn.Open();
            
            SqlCommand sqlcom = new System.Data.SqlClient.SqlCommand("Select SplitTime,sum(NoOfVehicles) AS TOTELVehicle From tblTraffic Where Region = '" + myTrafficDis.strRegion +"' Group By SplitTime", sqlConn);
            SqlDataReader sqlred = sqlcom.ExecuteReader();

            while (sqlred.Read())
            {
                ArrayTraffic objTraffic = new ArrayTraffic();

                objTraffic.strSplitTime = sqlred["SplitTime"].ToString();
                objTraffic.doubleNoOfVehicles = Convert.ToInt32(sqlred["TOTELVehicle"]);

                myArrayTraffic.Insert(indexArrTraffic, objTraffic);
                indexArrTraffic = indexArrTraffic + 1;
            }

            return myArrayTraffic;
        }
    }
}
