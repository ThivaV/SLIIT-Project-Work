package com.sliit.darshi;

import java.util.Locale;
import java.util.Random;

import android.app.Activity;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.os.Bundle;
import android.speech.tts.TextToSpeech;
import android.telephony.gsm.SmsManager;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.EditText;



public class SendSMS extends Activity{
	
	Bundle SendSMSBundle;
	String UserName;
	String CurrentLocationName;
	String Distance;
	String Destination;
	String MobileNumber;
	String CompanyName;
    protected SQLiteDatabase db;
    protected Cursor cursor;
    String UserSexFromDatabase;
    String UserSex;
    String ratePerKM;
    String extraCharges;
    int Charges;
    String MesssageContainFormat;
    TextToSpeech tts;
    String UserGender;
    
	
	
	
	 @Override
	    public void onCreate(Bundle savedInstanceState) {
	        super.onCreate(savedInstanceState);
	       setContentView(R.layout.send_sms);
	       db = (new DatabaseHelperForUsers(this)).getWritableDatabase();
	       SendSMSBundle = getIntent().getExtras();
	       UserName = SendSMSBundle.getString("UserName");
	       CurrentLocationName = SendSMSBundle.getString("CurrentLocationName");
	       Distance = SendSMSBundle.getString("Distance");
	       Destination = SendSMSBundle.getString("Destination");
	       MobileNumber = SendSMSBundle.getString("MobileNumber");
	       CompanyName = SendSMSBundle.getString("CompanyName");
	       ratePerKM = SendSMSBundle.getString("ratePerKM");
	       extraCharges = SendSMSBundle.getString("extraCharges");
	       
	       cursor = db.rawQuery("SELECT _id,Sex  FROM UserDetails where UserName = ? ", new String[] {"" + UserName}); 

	        if (cursor.getCount() == 1)
	        {
	        	cursor.moveToFirst();
	        
	        	 UserSexFromDatabase = cursor.getString(cursor.getColumnIndex("Sex"));
	       
	        	 
	        }
	        
	        if( UserSexFromDatabase.equals("Male"))
	        {
	        	UserSex = "He";
	        	
	        }
	        else
	        {
	        	UserSex = "She";
	        }
	        
	         if( UserSexFromDatabase.equals("Male"))
	        {
	        	UserGender = "Sir";
	        	
	        }
	        else
	        {
	        	UserGender = "Madam";
	        }
	        
	       
	        
	        Charges  = ( Integer.parseInt(Distance) * Integer.parseInt(ratePerKM)) + Integer.parseInt(extraCharges);
	        
	        
	        
	    MesssageContainFormat = " Hi " + CompanyName + ". This is Auto-Generated Message From E-Mobile Tracker Software." +
	       									" A Customer called " + UserName + "." + UserSex + " is at " + CurrentLocationName + 
	       									"and " + UserSex + " wants to move to " + Destination + " , The Distance between " + CurrentLocationName +
	       									" and " + Destination + " is " + Distance + " Meters Estiamted Charges for Service Rs " + Integer.toString(Charges) + " ( " + ratePerKM +" Rate Per KM + " + extraCharges + " extra Charges ) according to website" ;
	       
	       
	      EditText MessageEditView = (EditText) findViewById(R.id.MessageContainEditText);
	       MessageEditView.setText(MesssageContainFormat);
	       
	      Button SendSmsButton = (Button) findViewById(R.id.SendSMS);
	      SendSmsButton.setOnClickListener(new OnClickListener() {
			
			@Override
			public void onClick(View arg0) {
			
				SmsManager sms = SmsManager.getDefault();
		        sms.sendTextMessage(MobileNumber, null, MesssageContainFormat, null, null);
		        
		        
		        
		    	final String[] MapLoading = { "The Message has been sent. Thank you for using E-Mobile Tracker. Have a safe journey " + UserGender + "  . take care " };
				tts = new TextToSpeech(SendSMS.this,new TextToSpeech.OnInitListener() {

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
				
			}
		});
	     
	        
	       											
	       
	       
	       
	       
	 }
	 

}
