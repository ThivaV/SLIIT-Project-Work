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
    public class PopulationPredict
    {
        /// <summary>
        /// Birth Proper
        /// </summary>
        private int BirthYear;
        public int intBirthYear
        {
            get { return BirthYear; }
            set { BirthYear = value; }
        }
        private int BirthCount;
        public int intBirthCount
        {
            get { return BirthCount; }
            set { BirthCount = value; }
        }
        /// <summary>
        /// Death Proper
        /// </summary>
        private int DeathYear;
        public int intDeathYear
        {
            get { return DeathYear; }
            set { DeathYear = value; }
        }
        private int DeathCount;
        public int intDeathCount
        {
            get { return DeathCount; }
            set { DeathCount = value; }
        }
        /// <summary>
        /// Population Proper
        /// </summary>
        private int PopulationYear;
        public int intPopulationYear
        {
            get { return PopulationYear; }
            set { PopulationYear = value; }
        }
        private int PopulationCount;
        public int intPopulationCount
        {
            get { return PopulationCount; }
            set { PopulationCount = value; }
        }
        /// <summary>
        /// District,Year --- >> Pass From Front End--- 
        /// </summary>
        private string PredictDistrict;
        public string strPredictDistrict
        {
            get { return PredictDistrict; }
            set { PredictDistrict = value; }
        }
        private int PredictYear;
        public int intPredictYear
        {
            get { return PredictYear; }
            set { PredictYear = value; }
        }
        /// <summary>
        /// ---------------------------------------------
        /// </summary>
        
        /// --- Find Current Year ---        
        int CurrentYear = DateTime.Now.Year;
        /// -------------------------
        
        ArrayList myBirthArray = new ArrayList();
        int b = 0;

        ArrayList myDeathArray = new ArrayList();
        int d = 0;

        ArrayList myPopulationArray = new ArrayList();
        int p = 0;
                
        /// --- Birth ---
        /// <summary>
        /// -------------
        /// </summary>

        public ArrayList FindBirth(PopulationPredict myFindBirth) 
        {
            SqlConnection sqlConn = new SqlConnection(DL.SQL.conn);
            SqlDataReader sqlRdr = null;

            try 
            {
                sqlConn.Open();
                //-------------
                SqlCommand sqlCom = new SqlCommand("BirthPredictor", sqlConn);
                sqlCom.CommandType = CommandType.StoredProcedure;
                sqlCom.Parameters.Add("@SelectedRegion",myFindBirth.strPredictDistrict);

                sqlRdr = sqlCom.ExecuteReader();                
                //------------

                while(sqlRdr.Read())
                {
                    ArrayBirth objArrBirth = new ArrayBirth();

                    objArrBirth.intBirthYear = Convert.ToInt32(sqlRdr["tempYear"]);
                    objArrBirth.doubleBirthCount = Convert.ToInt32(sqlRdr["tempCount"]);

                    myBirthArray.Insert(b, objArrBirth);
                    b = b + 1;  
                }
                /// Close The Connections
                sqlRdr.Close();
                sqlConn.Close();

                /// --- Find Oldest Year & Value ---
                ArrayBirth objOldBirthFind=(ArrayBirth)(myBirthArray[0]);
                int DB_Old_BirthYear = objOldBirthFind.intBirthYear;
                double DB_Old_BirthCount = objOldBirthFind.doubleBirthCount;

                /// --- Find Newest year & Value ---
                int NoOf_tblBirth_DB_Row = myBirthArray.Count;
                int NoOf_Rows = NoOf_tblBirth_DB_Row - 1;

                ArrayBirth objNewBirthFind = (ArrayBirth)(myBirthArray[NoOf_Rows]);
                int DB_New_BirthYear = objNewBirthFind.intBirthYear;
                double DB_New_BirthCount = objNewBirthFind.doubleBirthCount;

                /// --- Predict Future ---
                int FindYear = myFindBirth.intPredictYear;
                int t = FindYear - DB_New_BirthYear;

                int CalcYear=CurrentYear;

                for (int i = 0; i < t; i++) 
                {
                    if (CalcYear <= 2022)
                    {
                        /// Algo For Birth
                        double NFuture = DB_New_BirthCount * Math.Exp((Math.Log((DB_New_BirthCount / DB_Old_BirthCount), Math.Exp(1)) / 4) * 1);
                        /// Algo For Birth

                        ArrayBirth objPredictArrBirth = new ArrayBirth();
                        objPredictArrBirth.intBirthYear = CalcYear;
                        objPredictArrBirth.doubleBirthCount = Math.Ceiling(NFuture);

                        myBirthArray.Insert(b, objPredictArrBirth);
                        b = b + 1;

                        // Copy Predicted value to calc next year value
                        DB_New_BirthCount = NFuture;
                        // Increment The Year
                        CalcYear++;
                    }
                    else
                    {
                        //DB_New_BirthCount = DB_New_BirthCount - 302;
                        ArrayBirth objPredictArrBirth = new ArrayBirth();
                        objPredictArrBirth.intBirthYear = CalcYear;
                        objPredictArrBirth.doubleBirthCount = Math.Ceiling(DB_New_BirthCount);

                        myBirthArray.Insert(b, objPredictArrBirth);
                        b = b + 1;

                        CalcYear++;
                    }
                }
            }
            catch(Exception ex)
            {

            }

            return myBirthArray;
        }  
 
        /// --- Death ---
        /// <summary>
        /// ------------
        /// </summary>
        public ArrayList FindDeath(PopulationPredict myFindDeath) 
        {
            SqlConnection sqlConn = new SqlConnection(DL.SQL.conn);
            SqlDataReader sqlRdr = null;

            try
            {
                sqlConn.Open();
                //-------------
                SqlCommand sqlCom = new SqlCommand("DeathPredictor", sqlConn);
                sqlCom.CommandType = CommandType.StoredProcedure;
                sqlCom.Parameters.Add("@SelectedRegion", myFindDeath.strPredictDistrict);

                sqlRdr = sqlCom.ExecuteReader();                
                //------------

                while (sqlRdr.Read())
                {
                    ArrayDeath objArrDeath = new ArrayDeath();

                    objArrDeath.intDeathYear = Convert.ToInt32(sqlRdr["tempYear"]);
                    objArrDeath.doubleDeathCount = Convert.ToInt32(sqlRdr["tempCount"]);

                    myDeathArray.Insert(d, objArrDeath);
                    d = d + 1;
                }
                /// Close The Connections
                sqlRdr.Close();
                sqlConn.Close();

                /// --- Find Oldest Year & Value ---
                ArrayDeath objOldDeathFind = (ArrayDeath)(myDeathArray[0]);
                int DB_Old_DeathYear = objOldDeathFind.intDeathYear;
                double DB_Old_DeathCount = objOldDeathFind.doubleDeathCount;

                /// --- Find Newest year & Value ---
                int NoOf_tblDeath_DB_Row = myDeathArray.Count;
                int NoOf_Rows = NoOf_tblDeath_DB_Row - 1;

                ArrayDeath objNewDeathFind = (ArrayDeath)(myDeathArray[NoOf_Rows]);
                int DB_New_DeathYear = objNewDeathFind.intDeathYear;
                double DB_New_DeathCount = objNewDeathFind.doubleDeathCount;

                /// --- Predict Future ---
                int FindYear = myFindDeath.intPredictYear;
                int t = FindYear - DB_New_DeathYear;

                int CalcYear = CurrentYear;

                for (int i = 0; i < t; i++)
                {
                    if (CalcYear <= 2028)
                    {
                        /// Algo For Death
                        double NFuture = DB_New_DeathCount * Math.Exp((Math.Log((DB_New_DeathCount / DB_Old_DeathCount), Math.Exp(1)) / 4) * 1);
                        /// Algo For Death

                        ArrayDeath objPredictArrDeath = new ArrayDeath();
                        objPredictArrDeath.intDeathYear = CalcYear;
                        objPredictArrDeath.doubleDeathCount = Math.Ceiling(NFuture);

                        myDeathArray.Insert(d, objPredictArrDeath);
                        d = d + 1;

                        // Copy Predicted value to calc next year value
                        DB_New_DeathCount = NFuture;
                        // Increment The Year
                        CalcYear++;
                    }
                    else 
                    {
                        ArrayDeath objPredictArrDeath = new ArrayDeath();
                        objPredictArrDeath.intDeathYear = CalcYear;
                        objPredictArrDeath.doubleDeathCount = Math.Ceiling(DB_New_DeathCount);

                        myDeathArray.Insert(d, objPredictArrDeath);
                        d = d + 1;

                        CalcYear++;
                    }
                }
            }
            catch (Exception ex)
            {

            }

            return myDeathArray;
        }

        /// --- Population ---
        /// <summary>
        /// ------------
        /// </summary> 
        public ArrayList FindPopulation(PopulationPredict myFindPopulation) 
        {
            /// --- Get the Newest Value from DB -->> tblPopulation
            SqlConnection sqlConn = new SqlConnection(DL.SQL.conn);
            SqlDataReader sqlRdr = null;

            try 
            {
                sqlConn.Open();
                //-------------
                SqlCommand sqlCom = new SqlCommand("PopulationPredictor", sqlConn);
                sqlCom.CommandType = CommandType.StoredProcedure;
                sqlCom.Parameters.Add("@SelectedRegion", myFindPopulation.strPredictDistrict);

                sqlRdr = sqlCom.ExecuteReader();
                //------------

                while (sqlRdr.Read())
                {
                    ArrayPopulation objArrPopulation = new ArrayPopulation();

                    objArrPopulation.intPopulationYear = Convert.ToInt32(sqlRdr["tempYear"]);
                    objArrPopulation.doublePopulationCount = Convert.ToInt32(sqlRdr["tempCount"]);

                    myPopulationArray.Insert(p, objArrPopulation);
                    p = p + 1;
                }
                /// Close The Connections
                sqlRdr.Close();
                sqlConn.Close();

                /// --- Find Newest year & Value ---
                int NoOf_tblPopulation_DB_Row = myPopulationArray.Count;
                int NoOf_Rows = NoOf_tblPopulation_DB_Row - 1;

                ArrayPopulation objNewPopulationFind = (ArrayPopulation)(myPopulationArray[NoOf_Rows]);
                int DB_New_PopulationYear = objNewPopulationFind.intPopulationYear;
                double DB_New_PopulationCount = objNewPopulationFind.doublePopulationCount;

                /// --- Predict Future ---
                int FindYear = myFindPopulation.intPredictYear;
                int t = FindYear - DB_New_PopulationYear;

                int CalcYear = CurrentYear;                

                for (int i = 0; i < t; i++)
                {
                    /// --- Birth Of The Year ---
                    ArrayBirth objGetBirth = (ArrayBirth)(myBirthArray[NoOf_Rows]);
                    double GetBirth = objGetBirth.doubleBirthCount;
                    /// --- Death Of The Year ---
                    ArrayDeath objGetdeath = (ArrayDeath)(myDeathArray[NoOf_Rows]);
                    double GetDeath = objGetdeath.doubleDeathCount;

                    /// Population Predict Algo
                    double FuturePopulation = DB_New_PopulationCount + GetBirth - GetDeath;
                    /// Population Predict Algo
                    
                    ArrayPopulation objPredictArrPopulation = new ArrayPopulation();
                    objPredictArrPopulation.intPopulationYear = CalcYear;
                    objPredictArrPopulation.doublePopulationCount = Math.Ceiling(FuturePopulation);

                    myPopulationArray.Insert(p, objPredictArrPopulation);
                    p = p + 1;

                    // Copy Predicted value to calc next year value
                    DB_New_PopulationCount = FuturePopulation;
                    // Increment The Year
                    CalcYear++;

                    // Increment The Birth & Death Year Value
                    NoOf_Rows++;
                }

            }
            catch(Exception ex)
            {

            }

            return myPopulationArray;
        }

        /// -----------------------
        /// --- No Prediction ---- ------------------------------
        /// ----------------------
        
        /// --- Birth ---

        public ArrayList noPredictBirth(PopulationPredict myNoPredictBirth) 
        {
            SqlConnection sqlConn = new SqlConnection(DL.SQL.conn);
            SqlDataReader sqlRdr = null;

            try
            {
                sqlConn.Open();
                //-------------------
                SqlCommand sqlCom = new SqlCommand("BirthPredictor",sqlConn);
                sqlCom.CommandType = CommandType.StoredProcedure;
                sqlCom.Parameters.Add("@SelectedRegion", myNoPredictBirth.strPredictDistrict);

                sqlRdr = sqlCom.ExecuteReader();
                //-------------------

                while(sqlRdr.Read())
                {
                    ArrayBirth objBirth = new ArrayBirth();

                    objBirth.intBirthYear = Convert.ToInt32(sqlRdr["tempYear"]);
                    objBirth.doubleBirthCount = Convert.ToInt32(sqlRdr["tempCount"]);                    
                   
                    myBirthArray.Insert(b, objBirth);
                    b = b + 1;
                }
            }
            catch (Exception ex) 
            {
            }
            return myBirthArray;
        }

        /// --- Death ---
        public ArrayList noPredictDeath(PopulationPredict myNoPredictDeath)
        {
            SqlConnection sqlConn = new SqlConnection(DL.SQL.conn);
            SqlDataReader sqlRdr = null;

            try
            {
                sqlConn.Open();
                //-------------------
                SqlCommand sqlCom = new SqlCommand("DeathPredictor", sqlConn);
                sqlCom.CommandType = CommandType.StoredProcedure;
                sqlCom.Parameters.Add("@SelectedRegion", myNoPredictDeath.strPredictDistrict);

                sqlRdr = sqlCom.ExecuteReader();
                //-------------------

                while (sqlRdr.Read())
                {
                    ArrayDeath objDeath = new ArrayDeath();

                    objDeath.intDeathYear = Convert.ToInt32(sqlRdr["tempYear"]);
                    objDeath.doubleDeathCount = Convert.ToInt32(sqlRdr["tempCount"]);

                    myDeathArray.Insert(d, objDeath);
                    d = d + 1;
                }
            }
            catch (Exception ex)
            {
            }
            return myDeathArray;
        } 

        /// --- Population ---
        public ArrayList noPredictPopulation(PopulationPredict myNoPredictPopulation)
        {
            SqlConnection sqlConn = new SqlConnection(DL.SQL.conn);
            SqlDataReader sqlRdr = null;

            try
            {
                sqlConn.Open();
                //-------------------
                SqlCommand sqlCom = new SqlCommand("PopulationPredictor", sqlConn);
                sqlCom.CommandType = CommandType.StoredProcedure;
                sqlCom.Parameters.Add("@SelectedRegion", myNoPredictPopulation.strPredictDistrict);

                sqlRdr = sqlCom.ExecuteReader();
                //-------------------

                while (sqlRdr.Read())
                {
                    ArrayPopulation objPopulation = new ArrayPopulation();

                    objPopulation.intPopulationYear = Convert.ToInt32(sqlRdr["tempYear"]);
                    objPopulation.doublePopulationCount = Convert.ToInt32(sqlRdr["tempCount"]);

                    myPopulationArray.Insert(p, objPopulation);
                    p = p + 1;
                }
            }
            catch (Exception ex)
            {
            }
            return myPopulationArray;
        } 

    }
}
