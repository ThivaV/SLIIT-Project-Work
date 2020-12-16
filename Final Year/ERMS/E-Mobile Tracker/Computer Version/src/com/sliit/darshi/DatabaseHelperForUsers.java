package com.sliit.darshi;

import android.content.ContentValues;
import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;


public class DatabaseHelperForUsers extends SQLiteOpenHelper {

	public static final String DATABASE_NAME = "UsersDatabase";
    
    public DatabaseHelperForUsers(Context context) {
            super(context, DATABASE_NAME, null, 1);
    }

	 
	@Override
	public void onCreate(SQLiteDatabase db) {
		String sql = "CREATE TABLE IF NOT EXISTS UserDetails (" +
        "_id INTEGER PRIMARY KEY AUTOINCREMENT, " + 
        "UserName TEXT, " +
        "Password TEXT, " +
        "Sex TEXT )"; 
       
		db.execSQL(sql);

		ContentValues values = new ContentValues();

		values.put("UserName", "Derrick");
		values.put("Password", "123456");
		values.put("Sex", "Male");
		db.insert("UserDetails ", "UserName", values);

		values.put("UserName", "Darshi");
		values.put("Password", "123456");
		values.put("Sex", "Female");
		db.insert("UserDetails ", "UserName", values);
		
		values.put("UserName", "Thiva");
		values.put("Password", "123456");
		values.put("Sex", "Male");
		db.insert("UserDetails ", "UserName", values);
		
		values.put("UserName", "Sinthana");
		values.put("Password", "123456");
		values.put("Sex", "Female");
		db.insert("UserDetails ", "UserName", values);
		
		values.put("UserName", "Derrick");
		values.put("Password", "123456");
		values.put("Sex", "Male");
		db.insert("UserDetails ", "UserName", values);
		
		
				
		
		
		
		
	}

	@Override
	public void onUpgrade(SQLiteDatabase db, int arg1, int arg2) {
		 db.execSQL("DROP TABLE IF EXISTS employees");
         onCreate(db);
		
	}
	
	
	
	

}
