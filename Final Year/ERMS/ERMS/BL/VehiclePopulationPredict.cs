using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Collections;
using System.Data;
using System.Data.SqlClient;
using DL;

namespace BL
{
    public class VehiclePopulationPredict
    {
        private string ElementType;
        public string strElementType
        {
            get { return ElementType; }
            set { ElementType = value; }
        }
        private int Year;
        public int intYear
        {
            get { return Year; }
            set { Year = value; }
        }
        private double NoOfVeh;
        public double doubleNoOfVeh
        {
            get { return NoOfVeh; }
            set { NoOfVeh = value; }
        }

        /// <summary>
        /// Predict Future Vehicle Population
        /// <summary>

        ArrayList myArrayVehPop = new ArrayList();
        int indexVehPop = 0;

        int total = 0;
        double PredictPop = 0.0;
        int DbYear = 0;
        int LoopForYr = 0;

        int CurrentYr = DateTime.Now.Year;

        public ArrayList FindVehPopulation(VehiclePopulationPredict myVehiclePopulationPredict)
        {
            // --- DB Connection ---
            SqlConnection sqlConn = new SqlConnection(DL.SQL.conn);
            SqlDataReader sqlRdr = null;

            VehiclePopulationPredict objVehiclePopulationPredict = new VehiclePopulationPredict();

            try 
            {
                sqlConn.Open();
                // -----------------
                SqlCommand sqlCom = new SqlCommand("VehiclePopulationPredictor", sqlConn);
                sqlCom.CommandType = CommandType.StoredProcedure;
                sqlRdr = sqlCom.ExecuteReader();
                // -----------------

                while (sqlRdr.Read())
                {
                    ArrayVehiclePopulation objArrayVehiclePopulation = new ArrayVehiclePopulation();

                    objArrayVehiclePopulation.intYear = Convert.ToInt16(sqlRdr["Year"]);
                    objArrayVehiclePopulation.doubleNoOfVeh = Convert.ToDouble(sqlRdr["TotalVehicle"]);

                    LoopForYr = Convert.ToInt16(sqlRdr["Year"]);

                    myArrayVehPop.Insert(indexVehPop, objArrayVehiclePopulation);
                    indexVehPop = indexVehPop + 1;
                }

                // --- Insert Year ---
                int FutureYr = myVehiclePopulationPredict.intYear;
                // --- Find The Loop Count ---
                int loopCount = FutureYr - LoopForYr;

                for (int j = 0; j < loopCount; j++)
                {
                    // --- Get the Oldest Value From the ArrayList ---
                    ArrayVehiclePopulation objOldestVal = (ArrayVehiclePopulation)(myArrayVehPop[0]);
                    double OldestVal = objOldestVal.doubleNoOfVeh;
                    // -----------------------------------------------

                    // --- Get the Newest Value From the ArrayList ---
                    int NearestYrVal = myArrayVehPop.Count;
                    NearestYrVal--;
                    ArrayVehiclePopulation objNewVal = (ArrayVehiclePopulation)(myArrayVehPop[NearestYrVal]);
                    double NewVal = objNewVal.doubleNoOfVeh;
                    DbYear = objNewVal.intYear;
                    // -----------------------------------------------

                    // --- Insert The Calc Value To Array ---
                    DbYear++;

                    // --- Algo ---                    
                    double Predicton = NewVal * Math.Exp((Math.Log((NewVal / OldestVal), Math.Exp(1)) / 4) * 1);
                    PredictPop = Predicton;
                    // --- Algo ---

                    ArrayVehiclePopulation objArrVehPopInsert = new ArrayVehiclePopulation();
                    objArrVehPopInsert.intYear = DbYear;
                    objArrVehPopInsert.doubleNoOfVeh = Convert.ToDouble(PredictPop);
                    myArrayVehPop.Insert((myArrayVehPop.Count), objArrVehPopInsert);

                    // --- Insert The Calc Value To Array ---
                }  
            }
            catch(Exception ex)
            {

            }
            return myArrayVehPop;
        }

        /// <summary>
        /// Non Prediction
        /// </summary>
        public ArrayList VehiclePopulation(VehiclePopulationPredict myVehPopulation)
        {
            SqlConnection sqlConn = new SqlConnection(DL.SQL.conn);
            sqlConn.Open();

            SqlCommand sqlcom = new System.Data.SqlClient.SqlCommand("Select Year,sum(NoOfVeh) AS TotalVeh From tblVehiclePopulation Group By Year ", sqlConn);
            SqlDataReader sqlred = sqlcom.ExecuteReader();

            while(sqlred.Read())
            {
                ArrayVehiclePopulation objVehPopulation = new ArrayVehiclePopulation();

                objVehPopulation.intYear = Convert.ToInt32(sqlred["Year"]);
                objVehPopulation.doubleNoOfVeh = Convert.ToDouble(sqlred["TotalVeh"]);

                myArrayVehPop.Insert(indexVehPop, objVehPopulation);
                indexVehPop = indexVehPop + 1;
            }

            return myArrayVehPop;
        }

        /// <summary>
        /// Non Prediction To vehicle types
        /// </summary>
        public ArrayList VehicleByType(VehiclePopulationPredict myVehType)
        {
            SqlConnection sqlConn = new SqlConnection(DL.SQL.conn);
            sqlConn.Open();

            SqlCommand sqlcom = new System.Data.SqlClient.SqlCommand("Select Year,sum(NoOfVeh) AS TotalVeh From tblVehiclePopulation Where [ElementType]='" + myVehType.strElementType + "' Group By Year  ", sqlConn);
            SqlDataReader sqlred = sqlcom.ExecuteReader();

            while (sqlred.Read())
            {
                ArrayVehiclePopulation objVehPopulation = new ArrayVehiclePopulation();

                objVehPopulation.intYear = Convert.ToInt32(sqlred["Year"]);
                objVehPopulation.doubleNoOfVeh = Convert.ToDouble(sqlred["TotalVeh"]);

                myArrayVehPop.Insert(indexVehPop, objVehPopulation);
                indexVehPop = indexVehPop + 1;
            }

            return myArrayVehPop;
        }
    }
}
