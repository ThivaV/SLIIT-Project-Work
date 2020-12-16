package com.sliit.darshi;


import java.util.StringTokenizer;

import com.sliit.darshi.DatabaseHelper;
import com.sliit.darshi.Cab_Service_Full_Details.cabServiceActionAdapter;



import android.app.Activity;
import android.app.ListActivity;
import android.os.Bundle;
import android.content.Intent;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.util.Log;
import android.view.View;

import android.view.View.OnClickListener;
import android.view.animation.AnimationUtils;
import android.view.animation.LayoutAnimationController;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.SimpleCursorAdapter;
import android.widget.TextView;
import android.widget.AdapterView.OnItemClickListener;

public class CabService  extends Activity{
	
	
	protected EditText searchText;
    protected SQLiteDatabase db;
    protected Cursor cursor;
    protected ListAdapter adapter;
    protected ListView employeeList;
    Bundle CabServiceBundle;
    String UserName;
    String CurrentLocationName;
    String Distance;
    String Destination;
    TextView CityCabService;
    Bundle CabServiceToCabServiceFullDetailsBundle;
    Bundle CabServiceToCompareServiceBundle;
    String [] CityName;
    TextView Title;
     
     public void onCreate(Bundle savedInstanceState) {
         super.onCreate(savedInstanceState);
         setContentView(R.layout.basic);
         CabServiceBundle = getIntent().getExtras();
         UserName = CabServiceBundle.getString("UserName");
         Distance = CabServiceBundle.getString("Distance");
         Destination = CabServiceBundle.getString("Destination");
         CurrentLocationName = CabServiceBundle.getString("CurrentLocationName");
         Title = (TextView) findViewById(R.id.Title);
         
         
         
         
         
         db = (new DatabaseHelper(this)).getWritableDatabase();
       //  searchText = (EditText) findViewById (R.id.searchText);
         employeeList = (ListView) findViewById (R.id.list);


       
 		StringTokenizer tokenNews = new StringTokenizer(CurrentLocationName);
 		CityName = new String[5];
 		int i = 0;
 		while ( tokenNews.hasMoreTokens() )
 		{
 			
 			CityName[i]= tokenNews.nextToken();
 			i++;
 			
 		}
 		
 		Title.setText(CityName[2]+" Cab Services");
         
         
         
         
         cursor = db.rawQuery("SELECT _id, companyName FROM CabServiceCompany where city = ? ", new String[] {"" + CityName[2]}); 
			
			adapter = new SimpleCursorAdapter(CabService.this,R.layout.cab_service_item_list,cursor,new String[] {"companyName"}, 
			new int[] {R.id.companyName });
			employeeList.setAdapter(adapter);
			LayoutAnimationController controller  = AnimationUtils.loadLayoutAnimation(this, R.anim.list_layout_controller);
			  //getListView().setLayoutAnimation(controller);
			  employeeList.setLayoutAnimation(controller);
			  
			  employeeList.setOnItemClickListener(new OnItemClickListener() {

				@Override
				public void onItemClick(AdapterView<?> arg0, View arg1,int arg2, long arg3) 
				{
					
					Intent CabServiceIntent = new Intent(CabService.this,Cab_Service_Full_Details.class);
					  int position =  (int) employeeList.getItemIdAtPosition(arg2)-1;
					 // CityCabService = (TextView) findViewById(R.id.companyName);
					  //CityCabService.setText(employeeList.getOnItemSelectedListener());
					  Cursor cursor1 = (Cursor) adapter.getItem(position);
					 String CompanyName =  cursor1.getString(cursor1.getColumnIndex("companyName"));
					 CabServiceToCabServiceFullDetailsBundle = new Bundle();
					 CabServiceToCabServiceFullDetailsBundle.putString("UserName", UserName);
					 CabServiceToCabServiceFullDetailsBundle.putString("CurrentLocationName", CurrentLocationName);
					 CabServiceToCabServiceFullDetailsBundle.putString("Distance", Distance);
					 CabServiceToCabServiceFullDetailsBundle.putString("Destination",Destination);
					 CabServiceToCabServiceFullDetailsBundle.putString("CompanyName", CompanyName);
					 CabServiceToCabServiceFullDetailsBundle.putString("CurrentLocationCity", CityName[2]);
					 CabServiceIntent.putExtras(CabServiceToCabServiceFullDetailsBundle);
					 
					 
					 
					
					 startActivity(CabServiceIntent);
					
					
					/*if(arg2 == 0)
					{
						Intent intent = new Intent(CabService.this,Cab_Service_Full_Details.class);
						startActivity(intent);
						
					}
					else if(arg2 == 1)
					{
						Intent intent = new Intent(CabService.this,CompareServices.class);
						startActivity(intent);
					}*/
					 
					
				}
				  
			});
			  
			  
			  Button CompareServicesButton = (Button) findViewById(R.id.CompareServices);
			  CompareServicesButton.setOnClickListener(new OnClickListener() {
				
				@Override
				public void onClick(View arg0) {
								
					
					CabServiceToCompareServiceBundle = new Bundle();
					CabServiceToCompareServiceBundle.putString("Distance", Distance);
					CabServiceToCompareServiceBundle.putString("CurrentLocationCity",CityName[2] );
					CabServiceToCompareServiceBundle.putString("UserName", UserName);
					CabServiceToCompareServiceBundle.putString("Destination",Destination);
					CabServiceToCompareServiceBundle.putString("CurrentLocationName",CurrentLocationName);
				    Intent CabServiceIntent = new Intent( CabService.this,CompareServices.class);
					CabServiceIntent.putExtras(CabServiceToCompareServiceBundle);
					startActivity(CabServiceIntent);
					
					
					
				}
			});
			  
			  
				
			
			  
       //  Button SearchButton = (Button) findViewById(R.id.SearchButton);
       //  SearchButton.setOnClickListener(new OnClickListener() {
 			
 		//	@Override
 		//	public void onClick(View arg0) {
 				/*  cursor = db.rawQuery("SELECT _id, firstName, lastName, title FROM employee WHERE firstName || ' ' || lastName LIKE ?", 
                           new String[]{"%" + searchText.getText().toString() + "%"});*/
         	//cursor = db.rawQuery("SELECT _id, companyName, companyAddress, ratePerKM FROM CabServiceCompany WHERE companyName ='Darhi Cab Service'", null); 
 			//	cursor = db.rawQuery("SELECT _id, companyName, companyAddress, ratePerKM FROM CabServiceCompany ", null); 
 				/*cursor = db.rawQuery("SELECT _id, companyName FROM CabServiceCompany ", null); 
 				
 				adapter = new SimpleCursorAdapter(CabService.this,R.layout.employee_list_item,cursor,new String[] {"companyName"}, 
 				new int[] {R.id.firstName });
 				employeeList.setAdapter(adapter);
 				
 			}
 		});*/
         
         
     }
   /*  public void onListItemClick(ListView parent, View view, int position, long id) {
	    	Intent intent = new Intent(CabService.this,Cab_Service_Full_Details.class);
	    	//Cursor cursor = (Cursor) adapter.getItem(position);
	    	//intent.putExtra("EMPLOYEE_ID", cursor.getInt(cursor.getColumnIndex("_id")));
	    	startActivity(intent);
	    }*/

}
