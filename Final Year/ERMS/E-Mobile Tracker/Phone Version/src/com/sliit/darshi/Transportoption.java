package com.sliit.darshi;

import android.accounts.Account;
import android.accounts.OnAccountsUpdateListener;
import android.app.Activity;
import android.content.Intent;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;


public class Transportoption extends Activity {
	Bundle TransportoptionBundle;
	String UserName;
	String CurrentLocationName;
	String Distance;
	String Destination;
	
	
	
	
    /** Called when the activity is first created. */
    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.transportoption);
       TransportoptionBundle = getIntent().getExtras();
        UserName = TransportoptionBundle.getString("UserName");
        CurrentLocationName = TransportoptionBundle.getString("CurrentLocationName");
        Distance = TransportoptionBundle.getString("Distance");
        Destination = TransportoptionBundle.getString("Destination");
        
        
        
        
        
        
        
        
       SQLiteDatabase db = openOrCreateDatabase("Cab_Service11", MODE_PRIVATE, null);
      /* db.execSQL("Create Table if not exists MYTable(LastName Varchar,FirstName varchar,Age int(3));");
        db.execSQL("insert into MYTable values ('Derrick','Jeevan',37);");
        db.close();
        Cursor c = db.rawQuery("Select * from MYTable where LastName='Derrick' ", null);
        c.moveToFirst();
        Log.d("Jeevan",c.getString(c.getColumnIndex("FirstName"))); */
        db.close();
        SQLiteDatabase db1 = openOrCreateDatabase("UsersDatabase", MODE_PRIVATE, null);
        db1.close();
        Button CabService = (Button) findViewById(R.id.CabService);
        //CabService.setText(Distance);
        CabService.setOnClickListener(new OnClickListener() {
			;
			@Override
			public void onClick(View arg0) {
				
				Intent TransportOptionIntent = new Intent(Transportoption.this,CabService.class);
				Bundle TransportOptionBundle1 = new Bundle();
				TransportOptionBundle1.putString("UserName", UserName);
				TransportOptionBundle1.putString("CurrentLocationName", CurrentLocationName);
				TransportOptionBundle1.putString("Distance", Distance);
				TransportOptionBundle1.putString("Destination", Destination);
			    TransportOptionIntent.putExtras(TransportOptionBundle1);
				
				startActivity(TransportOptionIntent);
				
				
				
			}
		});
        
        
        
      //  db.close();
        
        
       
			
		
			
			
				
				
		
        
        
        
        
        
    }
}

     