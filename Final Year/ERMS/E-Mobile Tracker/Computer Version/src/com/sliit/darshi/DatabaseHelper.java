package com.sliit.darshi;

import android.content.ContentValues;
import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;


public class DatabaseHelper extends SQLiteOpenHelper {

	public static final String DATABASE_NAME = "Cab_Service11";
    
    public DatabaseHelper(Context context) {
            super(context, DATABASE_NAME, null, 1);
    }

	 
	@Override
	public void onCreate(SQLiteDatabase db) {
		String sql = "CREATE TABLE IF NOT EXISTS CabServiceCompany (" +
        "_id INTEGER PRIMARY KEY AUTOINCREMENT, " + 
        "companyName TEXT, " +
        "companyAddress TEXT, " +
        "city TEXT, " +
        "ratePerKM INTEGER, " +
        
        "extraCharges INTEGER, " +
        "LandNumber TEXT, " +
        "Format Text," +
        "MobileNumber TEXT) "; 
       
		db.execSQL(sql);

		ContentValues values = new ContentValues();

		values.put("companyName", "Derrick Cab Service");
		values.put("companyAddress", "15 Malika Lane Colombo06");
		values.put("city", "Colombo");
		values.put("ratePerKM", "10");
		values.put("extraCharges", "20");
		values.put("LandNumber", "0094112123456");
		values.put("Format","Total Cost ");
		values.put("MobileNumber", "0094773889412");
		db.insert("CabServiceCompany ", "companyAddress", values);

		values.put("companyName", "Amesh Cab Service");
		values.put("companyAddress", "15 Galle Face Road Colombo06");
		values.put("city", "Colombo");
		values.put("ratePerKM", "20");
		values.put("extraCharges", "30");
		values.put("LandNumber", "0094112134159");
		values.put("Format","Total Cost ");
		values.put("MobileNumber", "0094773889412");
		db.insert("CabServiceCompany ", "companyAddress", values);


		values.put("companyName", "Thivakaran Cab Service");
		values.put("companyAddress", "15 Sea Stree Colombo06");
		values.put("city", "Colombo");
		values.put("ratePerKM", "30");
		values.put("extraCharges", "40");
		values.put("LandNumber", "0094112134169");
		values.put("Format","Total Cost ");
		values.put("MobileNumber", "0094773889412");
		db.insert("CabServiceCompany ", "companyAddress", values);
		

		values.put("companyName", "Prem Cab Service");
		values.put("companyAddress", "15 Dan Road Colombo06");
		values.put("city", "Colombo");
		values.put("ratePerKM", "40");
		values.put("extraCharges", "50");
		values.put("LandNumber", "0094112134199");
		values.put("Format","Total Cost ");
		values.put("MobileNumber", "0094773889412");
		db.insert("CabServiceCompany ", "companyAddress", values);
		
		
		values.put("companyName", "Kutti Cab Service");
		values.put("companyAddress", "15 Dan Road Colombo06");
		values.put("city", "Kandy");
		values.put("ratePerKM", "40");
		values.put("extraCharges", "50");
		values.put("LandNumber", "0094112134199");
		values.put("Format","Total Cost ");
		values.put("MobileNumber", "0094773889412");
		db.insert("CabServiceCompany ", "companyAddress", values);
		
		
		
				
		
		
		
		
	}

	@Override
	public void onUpgrade(SQLiteDatabase db, int arg1, int arg2) {
		 db.execSQL("DROP TABLE IF EXISTS employees");
         onCreate(db);
		
	}
	
	
	
	

}
