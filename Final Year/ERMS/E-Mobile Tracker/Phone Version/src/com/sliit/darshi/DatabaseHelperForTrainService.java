package com.sliit.darshi;

import android.content.ContentValues;
import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;


public class DatabaseHelperForTrainService extends SQLiteOpenHelper {

	public static final String DATABASE_NAME = "TrainService";
    
    public DatabaseHelperForTrainService(Context context) {
            super(context, DATABASE_NAME, null, 1);
    }

	
	@Override
	public void onCreate(SQLiteDatabase db) {
		String sql = "CREATE TABLE IF NOT EXISTS RailwayStation (" +
        "_id INTEGER PRIMARY KEY AUTOINCREMENT, " + 
        "City TEXT, " +
        "Address TEXT, " +
        "Format TEXT, " +
        "Time INTEGER) " ;
    
       	db.execSQL(sql);

		ContentValues values = new ContentValues();

		values.put("City", "Colombo RainWay");
		values.put("Address", "15 Malika Lane Colombo06");
		values.put("Format", "Train Avialable");
		values.put("ratePerKM", "100");
		
		
		values.put("companyName", "Darhi Cab Service");
		values.put("companyAddress", "15 Malika Lane Colombo06");
		values.put("city", "Colombo");
		values.put("ratePerKM", "100");
		values.put("extraCharges", "200");
		values.put("LandNumber", "0094112123456");
		values.put("Format","Total Cost ");
		values.put("MobileNumber", "0094770611641");
		db.insert("CabServiceCompany ", "companyAddress", values);

		values.put("companyName", "Sinthana Cab Service");
		values.put("companyAddress", "15 Galle Face Road Colombo06");
		values.put("city", "Colombo");
		values.put("ratePerKM", "200");
		values.put("extraCharges", "300");
		values.put("LandNumber", "0094112134159");
		values.put("Format","Total Cost ");
		values.put("MobileNumber", "0094770611651");
		db.insert("CabServiceCompany ", "companyAddress", values);


		values.put("companyName", "Thivakaran Cab Service");
		values.put("companyAddress", "15 Sea Stree Colombo06");
		values.put("city", "Colombo");
		values.put("ratePerKM", "300");
		values.put("extraCharges", "400");
		values.put("LandNumber", "0094112134169");
		values.put("Format","Total Cost ");
		values.put("MobileNumber", "0094770611681");
		db.insert("CabServiceCompany ", "companyAddress", values);
		

		values.put("companyName", "Prem Cab Service");
		values.put("companyAddress", "15 Dan Road Colombo06");
		values.put("city", "Colombo");
		values.put("ratePerKM", "400");
		values.put("extraCharges", "500");
		values.put("LandNumber", "0094112134199");
		values.put("Format","Total Cost ");
		values.put("MobileNumber", "0094770611641");
		db.insert("CabServiceCompany ", "companyAddress", values);
		
		
		
		
				
		
		
		
		
	}

	@Override
	public void onUpgrade(SQLiteDatabase db, int arg1, int arg2) {
		 db.execSQL("DROP TABLE IF EXISTS employees");
         onCreate(db);
		
	}
	
	
	
	

}
