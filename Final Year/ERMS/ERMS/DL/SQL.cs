using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace DL
{
    public class SQL
    {
        /// <summary>
        /// Other ConnectionString
        /// </summary>
        public static string conn = ConfigurationManager.ConnectionStrings["ERMSdbConnectionString"].ConnectionString;

        /// Send Receive SMSs ConnectionString
        public static string connSMS = ConfigurationManager.ConnectionStrings["ozekismsConnectionString"].ConnectionString;
    }
}
