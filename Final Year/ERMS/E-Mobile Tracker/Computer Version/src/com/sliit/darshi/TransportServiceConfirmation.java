package com.sliit.darshi;
import java.util.TreeMap;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.TextView;
import android.telephony.gsm.SmsManager;

public class TransportServiceConfirmation extends Activity {
	
	public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.transportservice);
       /* Bundle b = getIntent().getExtras();
        String distance = b.getString("distance");
        TextView DistanceTV = (TextView) findViewById(R.id.textView1);
        DistanceTV.setText("Distance is : " + distance);*/
        
        
        Button NoButton = (Button) findViewById(R.id.NoButton);
        NoButton.setOnClickListener(new OnClickListener() {
			
			@Override
			public void onClick(View arg0) {
				
				
				
				
			
				Intent i = new Intent(TransportServiceConfirmation.this,MapsActivity.class);
				startActivity(i);
				
				
				
				
			}
		});
        
      /*  Button YesButton =(Button) findViewById(R.id.YesButton);
        YesButton.setOnClickListener(new OnClickListener() {
			
			@Override
			public void onClick(View v) {
				  Bundle b1 = getIntent().getExtras();
					String name = b1.getString("UserName");
					String currentLocation  = b1.getString("CurrentLocation");
					String destination = b1.getString("destination");
					String Message = " one passager named " + name + "is at " + currentLocation + name + " wants to move " + destination ;
        			String phone = "0094773889412";
        		      
        	     //   PendingIntent pi = PendingIntent.getActivity(this, 0, new Intent(this, Transportoption.class), 0);                
        	        SmsManager sms = SmsManager.getDefault();
        	        sms.sendTextMessage(phone, null, Message, null, null);        
        	      
			}
			
			
		});*/
      
        
        
	}
	
        
	

}
