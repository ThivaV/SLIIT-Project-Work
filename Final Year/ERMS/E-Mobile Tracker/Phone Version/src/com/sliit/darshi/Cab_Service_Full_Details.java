package com.sliit.darshi;

import java.util.ArrayList;
import java.util.List;





import android.app.ListActivity;
import android.content.Intent;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.os.Bundle;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.View.OnClickListener;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.ListView;
import android.widget.TextView;

	





public class Cab_Service_Full_Details extends ListActivity {
	protected TextView companyName;
	protected TextView companyAddress;
	protected TextView city;
	protected TextView ratePerKM;
	protected TextView extraCharges;
	protected TextView LandNumber;
	protected TextView MobileNumber;
	protected int employeeId;
	protected int managerId;
	String UserName;
	String CurrentLocationName;
	String Distance;
	String CompanyName;
	String Destination;
	String CurrentLocationCity;
	Bundle Cab_Service_Full_Name_Bundle;
	Bundle CabServiceFullNameToCompareServiceBundle;
	

	protected List<cabServiceAction> actions;
    protected cabServiceActionAdapter adapter;
	
	 @Override
	    public void onCreate(Bundle savedInstanceState) {
	        super.onCreate(savedInstanceState);
	        setContentView(R.layout.cab_services);
	        Cab_Service_Full_Name_Bundle = getIntent().getExtras();
	        UserName = Cab_Service_Full_Name_Bundle.getString("UserName");
	        CurrentLocationName = Cab_Service_Full_Name_Bundle.getString("CurrentLocationName");
	        Destination = Cab_Service_Full_Name_Bundle.getString("Destination");
	        CompanyName = Cab_Service_Full_Name_Bundle.getString("CompanyName");
	        Distance = Cab_Service_Full_Name_Bundle.getString("Distance");
	        CurrentLocationCity = Cab_Service_Full_Name_Bundle.getString("CurrentLocationCity");
	        
	        
	        
	        
	     
	        
	        //String CompanyNameStatic ="Darhi Cab Service";
	        SQLiteDatabase db = (new DatabaseHelper(this)).getWritableDatabase();
	        Log.e("Error Check","Starting of Query");
	      Cursor cursor = db.rawQuery("SELECT _id,companyName, companyAddress,city, ratePerKM, extraCharges, LandNumber,MobileNumber FROM  CabServiceCompany WHERE companyName  =?", 
					new String[]{""+CompanyName});
	      
	     /*  Cursor cursor = db.rawQuery("SELECT _id,companyName, companyAddress,city, ratePerKM, extraCharges, LandNumber,MobileNumber FROM  CabServiceCompany WHERE companyName  ='Darhi Cab Service'", 
					null);*/
	      /*  Cursor cursor = db.rawQuery("SELECT _id,companyName, companyAddress,city, ratePerKM, extraCharges, LandNumber,MobileNumber FROM  CabServiceCompany WHERE  = ?", 
					new String[]{""+employeeId});*/

	        if (cursor.getCount() == 1)
	        {
	        	cursor.moveToFirst();
	        
		     
	        	
	        	 companyName = (TextView) findViewById(R.id.companyName);
			     companyName.setText(cursor.getString(cursor.getColumnIndex("companyName")));
		       /* employeeTitle = (TextView) findViewById(R.id.title);
		        employeeTitle.setText(cursor.getString(cursor.getColumnIndex("title"))); */

		        actions = new ArrayList<cabServiceAction>();
		        
		        String companyAddress = cursor.getString(cursor.getColumnIndex("companyAddress"));
		        if (companyAddress != null) {
		        	actions.add(new cabServiceAction("Office Address", companyAddress, cabServiceAction.ACTION_CALL));
		        }
		        
		        String city = cursor.getString(cursor.getColumnIndex("city"));
		        if (city != null) {
		        	actions.add(new cabServiceAction("City", city, cabServiceAction.ACTION_CALL));
		        	
		        }
		
		        String ratePerKM = Integer.toString(cursor.getInt(cursor.getColumnIndex("ratePerKM")));
		        if (ratePerKM != null) {
		        	actions.add(new cabServiceAction("ratePerKM", ratePerKM, cabServiceAction.ACTION_EMAIL));
		        }
		        
		        String extraCharges = Integer.toString(cursor.getInt(cursor.getColumnIndex("extraCharges")));
		        if (extraCharges != null) {
		        	actions.add(new cabServiceAction("extraCharges", extraCharges, cabServiceAction.ACTION_EMAIL));
		        }
		        
		        String LandNumber = cursor.getString(cursor.getColumnIndex("LandNumber"));
		        if (LandNumber != null) {
		        	actions.add(new cabServiceAction("LandNumber", LandNumber, cabServiceAction.ACTION_EMAIL));
		        }
		        
		        String MobileNumber = cursor.getString(cursor.getColumnIndex("MobileNumber"));
		        if (MobileNumber != null) {
		        	actions.add(new cabServiceAction("MobileNumber", LandNumber, cabServiceAction.ACTION_EMAIL));
		        }
		        
		        
		        
		        
		        
		        adapter = new cabServiceActionAdapter();
		        setListAdapter(adapter);
		        
	        }
	                Button CompareServiceButton1 = (Button) findViewById(R.id.CompareServices1);
	                CompareServiceButton1.setOnClickListener(new OnClickListener() {
						
						@Override
						public void onClick(View arg0) {

							
							CabServiceFullNameToCompareServiceBundle = new Bundle();
							CabServiceFullNameToCompareServiceBundle.putString("Distance", Distance);
						    CabServiceFullNameToCompareServiceBundle.putString("CurrentLocationCity",CurrentLocationCity );
							CabServiceFullNameToCompareServiceBundle.putString("UserName", UserName);
							CabServiceFullNameToCompareServiceBundle.putString("Destination",Destination);
							CabServiceFullNameToCompareServiceBundle.putString("CurrentLocationName",CurrentLocationName);
							Intent CabServiceToCompareServiceIntent = new Intent(Cab_Service_Full_Details.this,CompareServices.class);
							CabServiceToCompareServiceIntent.putExtras(CabServiceFullNameToCompareServiceBundle);
							startActivity(CabServiceToCompareServiceIntent);
							
							
						}
					});
	                  
	 
	    }
	 class cabServiceActionAdapter extends ArrayAdapter<cabServiceAction> {

		 cabServiceActionAdapter() {
				super(Cab_Service_Full_Details.this, R.layout.action_list_item, actions);
			}
	    	
	    	@Override
	    	public View getView(int position, View convertView, ViewGroup parent) {
	    		cabServiceAction action = actions.get(position);
	    		LayoutInflater inflater = getLayoutInflater();
	    		View view = inflater.inflate(R.layout.action_list_item, parent, false);
	    		TextView label = (TextView) view.findViewById(R.id.label);
	    		label.setText(action.getLabel());
	    		TextView data = (TextView) view.findViewById(R.id.data);
	    		data.setText(action.getData());
	    		return view;
	    	}
	    	
	    }
	 
	
	    
	    
	}
	
	
	


