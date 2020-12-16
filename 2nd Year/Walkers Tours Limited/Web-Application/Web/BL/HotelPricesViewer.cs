using System;
using System.Collections.Generic;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using DL;

namespace BL
{
    public class HotelPricesViewer
    {
        private string HotName;
        public string strHotName
        {
            get { return HotName; }
            set { HotName = value; }
        }
        private float SigBed;
        public float flotSigBed
        {
            get { return SigBed; }
            set { SigBed = value; }
        }
        private float DouBed;
        public float flotDouBed
        {
            get { return DouBed; }
            set { DouBed = value; }
        }
        private float TriBed;
        public float flotTriBed
        {
            get { return TriBed; }
            set { TriBed = value; }
        }
        private float BedBrek;
        public float flotBedBrek
        {
            get { return BedBrek; }
            set { BedBrek = value; }
        }
        private float HlfMeal;
        public float flotHlfMeal
        {
            get { return HlfMeal; }
            set { HlfMeal = value; }
        }
        private float FulMeal;
        public float flotFulMeal
        {
            get { return FulMeal; }
            set { FulMeal = value; }
        }

        public DataSet selectPriceInfo(HotelPricesViewer myHotelPricesViewer)
        {
                SqlConnection sqlcon = new SqlConnection(DL.SQL.constring);
                DataSet ds = new DataSet();
                try
                {
                    SqlDataAdapter da = new SqlDataAdapter("SELECT HotName, SigBed, DouBed, TriBed, HlfMeal, FulMeal, BedBrek FROM dbo.HotPri WHERE (HotName = '"+myHotelPricesViewer.strHotName+"')", sqlcon);
                    
                    da.Fill(ds, "HotPri");
                    
                }
                catch (Exception ex)
                {
                    throw new System.NotImplementedException();
                }
                return ds;
        }

        //public bool checkRoomAvailability(RoomReserversation myRoomReserversation)
        //{
        //    bool result = false;
        //    SqlConnection sqlcon = new SqlConnection(DL.SQL.constring);
        //    try
        //    {
        //        SqlDataAdapter sqlAdp = new SqlDataAdapter("select RoomID,Description from tbl1", sqlcon);
        //        DataSet dstem = new DataSet();
        //        sqlAdp.Fill(dstem, "tbl1");

        //        return result;
        //    }
        //    catch (Exception ex)
        //    {
        //        throw new System.NotImplementedException();
        //    }
        //}

    }
}
