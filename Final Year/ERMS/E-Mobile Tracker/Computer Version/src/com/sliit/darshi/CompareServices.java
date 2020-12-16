package com.sliit.darshi;




import java.io.IOException;
import java.util.List;
import java.util.Locale;
import java.util.Random;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.location.Address;
import android.location.Geocoder;
import android.location.Location;
import android.net.Uri;
import android.os.Bundle;
import android.speech.tts.TextToSpeech;
import android.util.Log;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.SimpleCursorAdapter;
import android.widget.TextView;
import android.widget.AdapterView.OnItemClickListener;

public class CompareServices extends Activity {
	
	 protected SQLiteDatabase db;
     protected Cursor cursor;
     protected ListAdapter adapter;
     protected ListView CompareServiceList;
     String CurrentLocationCity;
     String UserName;
     String Distance;
     String Destination;
     String CurrentLocationName;
     int Meters;
     Intent CompareServiceIntent;
     Bundle CompareServiceBundle;
     Geocoder CoderForCurrentLocation;
     Geocoder CoderForCabLocation;
     Address CurrentLocationForCompareService;
     Address CabLocation;
     String companyAddress;
	 String LandNumber;
	 String MobileNumber ;
	 Double CurrentLocationLatitute;
	  Double CurrentLocationLongitute;
	  Double CabLocationLatitute;
	 Double CabLocationLongitude;
	 double CurrentNCabDistance;
	 int CurrentNCabDistanceInt;
	 Bundle CompareServiceToSendSMSBundle;
	 String CompanyName ;
	 AlertDialog.Builder builder;
	 String ratePerKM;
	 String extraCharges;
	 TextView TitleTextView;
	 TextToSpeech tts;
	 
     
	

	 @Override
	    public void onCreate(Bundle savedInstanceState) {
	        super.onCreate(savedInstanceState);
	       setContentView(R.layout.compareservices);

	    //   	TitleTextView = findViewById(R.id.t)
	        CoderForCurrentLocation = new Geocoder(this);
	        CoderForCabLocation = new Geocoder(this);
	        
	        db = (new DatabaseHelper(this)).getWritableDatabase();
            CompareServiceList = (ListView) findViewById (R.id.list);
            
           CompareServiceBundle = getIntent().getExtras();
           CurrentLocationCity = CompareServiceBundle.getString("CurrentLocationCity");
           Distance = CompareServiceBundle.getString("Distance");
           Destination = CompareServiceBundle.getString("Destination");
           CurrentLocationName = CompareServiceBundle.getString("CurrentLocationName");
           UserName = CompareServiceBundle.getString("UserName");
            Meters = Integer.parseInt(Distance);
          // Meters = 100; 
           //CurrentLocationCity = "Colombo";
            cursor = db.rawQuery("SELECT _id, companyName, Format, extraCharges + ratePerKM * ? as Charges  FROM CabServiceCompany where city = ? ",new String[]{""+Meters,""+CurrentLocationCity}); 
           // cursor = db.rawQuery("SELECT _id, companyName, Format,    +  extraCharges + ratePerKM * ? as Charges  FROM CabServiceCompany ",new String[]{""+Meters});
            adapter = new SimpleCursorAdapter(CompareServices.this,R.layout.cab_service_item_list,cursor,new String[] {"companyName","Format","Charges"}, 
			new int[] {R.id.companyName,R.id.Format,R.id.TotalCharges});
			CompareServiceList.setAdapter(adapter);
			
			
			final String[] MapLoading = { "You can compare the Cab services according to charges and distances " };
			tts = new TextToSpeech(CompareServices.this,new TextToSpeech.OnInitListener() {

						@Override
						public void onInit(int status) {
							// TODO Auto-generated method stub
							if (status != TextToSpeech.ERROR) {
								tts.setLanguage(Locale.UK);

							}
							Random r = new Random();
							String random = MapLoading[r.nextInt(1)];
							tts.speak(random, TextToSpeech.QUEUE_FLUSH, null);

						}
					}); 
			
	        CompareServiceList.setOnItemClickListener(new OnItemClickListener() {

	    	   
	    	   
			@Override
			public void onItemClick(AdapterView<?> arg0, View arg1, int arg2,long arg3) {
				
				 builder = new AlertDialog.Builder(CompareServices.this);
				 final AlertDialog.Builder builder1 = new AlertDialog.Builder(CompareServices.this);
				
				/*List<Address> addressForCurrentLocation;
				List<Address> addressForCab ;
				
				 try {
					addressForCurrentLocation = CoderForCurrentLocation.getFromLocationName(CurrentLocationName, 1);
					CurrentLocationForCompareService = addressForCurrentLocation.get(0);
	   				 CurrentLocationLatitute = CurrentLocationForCompareService.getLatitude() ;
		              CurrentLocationLongitute = CurrentLocationForCompareService.getLongitude();
		             
					
					
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}*/
				
				 int position =  (int) CompareServiceList.getItemIdAtPosition(arg2)-1;
				 // CityCabService = (TextView) findViewById(R.id.companyName);
				  //CityCabService.setText(employeeList.getOnItemSelectedListener());
				  Cursor cursor1 = (Cursor) adapter.getItem(position);
				 CompanyName =  cursor1.getString(cursor1.getColumnIndex("companyName"));
			//companyAddress = "Derrick Cab Service";
				 
				
			Cursor  cursor123 = db.rawQuery("SELECT _id,companyAddress,ratePerKM,extraCharges,LandNumber, MobileNumber FROM CabServiceCompany  WHERE companyName = ? ",new String[]{""+CompanyName}); 
			if( cursor123.getCount() == 1)
			{
				cursor123.moveToFirst();
			
			companyAddress = cursor123.getString(cursor123.getColumnIndex("companyAddress"));
			LandNumber = cursor123.getString(cursor123.getColumnIndex("LandNumber"));
			 MobileNumber = cursor123.getString(cursor123.getColumnIndex("MobileNumber"));
			 ratePerKM = cursor123.getString(cursor123.getColumnIndex("ratePerKM"));
			 extraCharges=cursor123.getString(cursor123.getColumnIndex("extraCharges"));
				 
			}	
				
				
				/*try {
					addressForCab = CoderForCabLocation.getFromLocationName(companyAddress, 1);
					CabLocation = addressForCab.get(0);
					 CabLocationLatitute= CabLocation.getLatitude();
					 CabLocationLongitude = CabLocation.getLongitude();
					
					
					
					
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}*/
				
				
				
				Location locationA = new Location("point A");
				 
				// locationA.setLatitude(CurrentLocationLatitute);
				// locationA.setLongitude(CurrentLocationLongitute);
				 
				 locationA.setLatitude(6.946939);
			     locationA.setLongitude(79.857559);
				 
				 Location locationB = new Location("point B");
				 
				// locationB.setLatitude(CabLocationLatitute);
				// locationB.setLongitude(CabLocationLongitude);
				 
				 locationB.setLatitude(6.948175);
			     locationB.setLongitude(79.862559);
				 
				 
				 CurrentNCabDistance = (double) locationA.distanceTo(locationB); 
				 
				 CurrentNCabDistanceInt = (int) CurrentNCabDistance;
				String FormatForAlert ;
		     	builder.setMessage("Since Distance between current location and the Cab Service Company is "+  CurrentNCabDistanceInt +" Meters Do You Want to proceed");
				builder.setCancelable(false);
				builder.setPositiveButton("yes I want", new DialogInterface.OnClickListener() {
				@Override
					public void onClick(DialogInterface arg0, int arg1) {
						
				
					builder.setMessage("Do you want make a call or send sms");
					
					builder.setCancelable(false);
					builder.setPositiveButton("Make Call", new DialogInterface.OnClickListener() {

						@Override
						public void onClick(DialogInterface arg0, int arg1) {
							
							 builder.setMessage("LandNumber or HotLine ");
								builder.setCancelable(false);
								builder.setPositiveButton("LandNumber", new DialogInterface.OnClickListener() {
									@Override
									public void onClick(DialogInterface arg0, int arg1) {
										
							
										String uri = "tel:" + LandNumber.trim() ;
										Intent intent = new Intent(Intent.ACTION_CALL);
										intent.setData(Uri.parse(uri));
										startActivity(intent);
										
									}
									
							
									});
								
								builder.setNegativeButton("HotLine", new DialogInterface.OnClickListener() {
									
									@Override
									public void onClick(DialogInterface arg0, int arg1) {
									
										String uri = "tel:" + MobileNumber.trim() ;
										Intent intent = new Intent(Intent.ACTION_CALL);
										intent.setData(Uri.parse(uri));
										startActivity(intent);
										
									}
								});
								AlertDialog Alert2 = builder.create();
								Alert2.show();
						    }				 
						

						});
					builder.setNegativeButton("Send SMS", new DialogInterface.OnClickListener() {
						
						@Override
						public void onClick(DialogInterface arg0, int arg1) {
						  
						  
							CompareServiceToSendSMSBundle = new Bundle();
							CompareServiceToSendSMSBundle.putString("UserName", UserName);
							CompareServiceToSendSMSBundle.putString("CurrentLocationName", CurrentLocationName);
							CompareServiceToSendSMSBundle.putString("Distance", Distance);
							CompareServiceToSendSMSBundle.putString("Destination", Destination);
							CompareServiceToSendSMSBundle.putString("MobileNumber",MobileNumber);
							CompareServiceToSendSMSBundle.putString("CompanyName", CompanyName);
							CompareServiceToSendSMSBundle.putString("ratePerKM", ratePerKM);
							CompareServiceToSendSMSBundle.putString("extraCharges",extraCharges);
							Intent CompareServiceToSendSMSIntent = new Intent(CompareServices.this,SendSMS.class);
							CompareServiceToSendSMSIntent.putExtras(CompareServiceToSendSMSBundle);
							startActivity(CompareServiceToSendSMSIntent);
							
							
						}
					});
						
					AlertDialog Alert1 = builder.create();
					Alert1.show();
						
					}
				});
				builder.setNegativeButton("No I Select Another 1", new DialogInterface.OnClickListener() {
					
					@Override
					public void onClick(DialogInterface arg0, int arg1) {
					  // DestinationET.setText("Inside No Dialog");
					  
						
					}
				});
				AlertDialog alert = builder.create();
				alert.show();
				
				
				
				
			}
	    	   
	    	   
	    	   
		});
	        
	        
	 }

}
