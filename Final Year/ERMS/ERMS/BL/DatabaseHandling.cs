using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using DL;

namespace BL
{
    public class DatabaseHandling
    {
        private static SqlConnection sqlConn = null;
        private static string serverName = "(local)\\SQLExpress"; //---(local)\\SQLExpress  THIVAHARANV\SQLEXPRESS
        private static string userName = "ThivaV";
        private static string passwd = "sql";
        private static string database = "ozekisms";
        private static string connectionString = "Server=" + serverName + ";" +
                "Database=" + database + ";" +
                "User Id=" + userName + ";" +
                "Password=" + passwd + ";"; 

        private static void Connect(out string errorMsg)
        {
            errorMsg = "";

            if (sqlConn == null)
                sqlConn = new SqlConnection(connectionString);
            try
            {
                sqlConn.Open();
            }
            catch (Exception exc)
            {
                errorMsg = exc.Message;
            }
        }

        private static void CloseConnection()
        {
            try
            {
                sqlConn.Close();
            }
            catch (Exception)
            { }
        }

        public static void insertMessage(string receiver, string messageText,
            out string errorMsg)
        {
            Connect(out errorMsg);
            if (errorMsg != "")
                return;

            try
            {
                SqlCommand sqlComm = sqlConn.CreateCommand();
                sqlComm.CommandText = "insert into ozekimessageout " + "(msgtype,receiver,msg,status) " + "values ('SMS:TEXT','" + receiver + "','" + messageText + "','send');";
                if (sqlComm.ExecuteNonQuery() == 0)
                {
                    errorMsg = "Insert was UNsuccessful!";
                }
                else
                {
                    errorMsg = "Insert was successful!";
                }
            }
            catch (Exception e)
            {
                errorMsg = e.Message;
            }

            CloseConnection();
        }
        //--------------------        
    }
}
