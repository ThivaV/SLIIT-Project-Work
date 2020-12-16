package com.sliit.darshi;



import java.util.StringTokenizer;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.EditText;

public class Login extends Activity {
    /** Called when the activity is first created. */
    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.main);
       Button SignINButton = (Button) findViewById(R.id.SignIN);
       SignINButton.setOnClickListener(new OnClickListener() {
		
		@Override
		public void onClick(View arg0) {
			
			   EditText UserNameET = (EditText) findViewById(R.id.UserNameET);
			
		       
		 		
		    String UserName = UserNameET.getText().toString();
		      // Intent LoginIntent = new Intent (Login.this,MapsActivity.class);
		    	Intent LoginIntent = new Intent(Login.this,MapsActivity.class);
		   		Bundle LoginBundle = new Bundle();
		   		LoginBundle.putString("UserName", UserName);
		   		LoginIntent.putExtras(LoginBundle);
		       startActivity(LoginIntent);
			
		}
	   
	   });
	   
    	   
    	   
       }

     
        
              
    }
