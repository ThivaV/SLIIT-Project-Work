using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DL;
using System.Data;
using System.Data.SqlClient;
using System.Collections;

namespace BL
{
    public class AccidentPredict
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
        private int NoOfAccidents;
        public int intNoOfAccidents
        {
            get { return NoOfAccidents; }
            set { NoOfAccidents = value; }
        }


        /// <summary>
        /// Predict Future Accident
        /// <summary>

        ArrayList myArrayAccident = new ArrayList();
        int indexArrAcc = 0;

        double PredictAcc = 0.0;
        int DbYear = 0;
        int LoopForYr = 0;

        int CurrentYr = DateTime.Now.Year;
        
        public ArrayList FindAccident(AccidentPredict myFindAccident)
        {          
            // --- DB Connection ---
            SqlConnection sqlConn = new SqlConnection(DL.SQL.conn);
            SqlDataReader sqlRdr = null;

            AccidentPredict objAccidentPredict = new AccidentPredict();

            try
            {
                sqlConn.Open();
                // -----------------
                SqlCommand sqlCom = new SqlCommand("AccidentPredictor", sqlConn);
                sqlCom.CommandType = CommandType.StoredProcedure;
                sqlRdr = sqlCom.ExecuteReader();              
                // -----------------

                while(sqlRdr.Read())
                {
                    ArrayAccident objAccident = new ArrayAccident();

                    objAccident.intYear = Convert.ToInt16(sqlRdr["Year"]);
                    objAccident.intNoOfAccidents = Convert.ToInt32(sqlRdr["TotalACCIDENT"]);

                    LoopForYr = Convert.ToInt16(sqlRdr["Year"]);

                    myArrayAccident.Insert(indexArrAcc, objAccident);
                    indexArrAcc = indexArrAcc + 1;
                }

                // --- Insert Year ---
                int FutureYr = myFindAccident.intYear;
                // --- Find The Loop Count ---
                int loopCount = FutureYr - LoopForYr;

                for (int j = 0; j < loopCount; j++)
                {
                    // --- Get the Oldest Value From the ArrayList ---
                    ArrayAccident objOldestVal=(ArrayAccident)(myArrayAccident[0]);
                    double OldestVal = objOldestVal.intNoOfAccidents;
                    // -----------------------------------------------

                    // --- Get the Newest Value From the ArrayList ---
                    int NearestYrVal = myArrayAccident.Count;
                    NearestYrVal--;
                    ArrayAccident objNewVal = (ArrayAccident)(myArrayAccident[NearestYrVal]);
                    double NewVal = objNewVal.intNoOfAccidents;
                    DbYear = objNewVal.intYear;
                    // -----------------------------------------------

                    // --- Insert The Calc Value To Array ---
                    DbYear++;

                    // --- Algo ---                    
                    double Predicton = NewVal * Math.Exp((Math.Log((NewVal / OldestVal), Math.Exp(1)) / 4) * 1);
                    PredictAcc = Convert.ToInt32(Predicton);
                    // --- Algo ---

                    // --- Insert The Calc Value To Array ---
                    ArrayAccident objArrAccInsert = new ArrayAccident();
                    objArrAccInsert.intYear = DbYear;
                    objArrAccInsert.intNoOfAccidents = Convert.ToInt32(PredictAcc);
                    myArrayAccident.Insert((myArrayAccident.Count), objArrAccInsert);
                    // --- Insert The Calc Value To Array ---
                }   
            }
            catch (Exception ex) 
            {
            }

            return myArrayAccident;
        }
    }
}
