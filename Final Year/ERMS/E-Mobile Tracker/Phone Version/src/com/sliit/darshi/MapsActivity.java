package com.sliit.darshi;

import com.google.android.maps.GeoPoint;
import com.google.android.maps.MapActivity;
import com.google.android.maps.MapController;
import com.google.android.maps.MapView;
import com.google.android.maps.MyLocationOverlay;
import com.google.android.maps.MapView.LayoutParams;

import android.location.Address;
import android.location.Geocoder;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.SystemClock;

import android.speech.tts.TextToSpeech;
import android.util.EventLogTags.Description;
import android.view.ContextMenu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import android.widget.Toast;

import android.R.integer;
import android.app.AlertDialog;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Point;
import android.view.View;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.View.OnClickListener;
import android.widget.LinearLayout;

import java.io.IOException;
import java.io.InputStream;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.Random;



import com.sliit.darshi.Road;



import com.google.android.maps.Overlay;
import com.google.android.maps.MapView.LayoutParams;

public class MapsActivity extends MapActivity  {

	GeoPoint p;
	// String Name =

	TextToSpeech tts;
	Geocoder coder20;
	int distanceInINT;
	EditText DestinationET;
	 public Road mRoad;
	 MapView mapView;
	
	 String CurrentLocationLat = null;
	 String CurrentLocationLon = null;
	 LocationManager lm;
	 Address location20;
	 double distance;
	 String Destination;
	 String UserName;
	 String CurrentLocaitonName;
	 Bundle MapsActivityBundle;
	 MapOverlay mapOverlay;
	 List<Overlay> listOfOverlays ;
	 MapController mc ;
	 ProgressBar progressBar;
	 Double DestinationLatitute;
	 Double DestinationLongitude;
	 Geocoder geoCoder;
	 Geocoder geoCoder12;


	class MapOverlay extends com.google.android.maps.Overlay
	{
		@Override
		
		  public boolean draw(Canvas canvas, MapView mapView,boolean shadow,  long when)
		{
			
			super.draw(canvas, mapView, shadow);
			Point screenPts = new Point(); 
			mapView.getProjection().toPixels(p, screenPts);
		    Bitmap bmp =  BitmapFactory.decodeResource(getResources(), R.drawable.pushpin);
		    canvas.drawBitmap(bmp, screenPts.x, screenPts.y-50, null);
		    return  true;
		}
	
	
	}

		  
		  
		
		
		 

		/*
		 * @Override public boolean onTouchEvent(MotionEvent event, MapView
		 * mapView) { //---when user lifts his finger--- if (event.getAction()
		 * == 1) { // System.out.println("Hello World"); Geocoder p1 =
		 * mapView.getProjection().fromPixels( (int) event.getX(), (int)
		 * event.getY());
		 * 
		 * Geocoder geoCoder = new Geocoder(getBaseContext(),
		 * Locale.getDefault()); try { List<Address> addresses =
		 * geoCoder.getFromLocation(p1.getLatitudeE6() / 1E6,
		 * p1.getLongitudeE6() / 1E6, 1);
		 * 
		 * String add = ""; if (addresses.size() > 0) { for (int i=0;
		 * i<addresses.get(0).getMaxAddressLineIndex(); i++) add +=
		 * addresses.get(0).getAddressLine(i) + "\n"; }
		 * 
		 * Toast.makeText(getBaseContext(), add, Toast.LENGTH_SHORT).show();
		 * 
		 * } catch (IOException e) { e.printStackTrace(); } return true; } else
		 * return false; }
		 */

	

	@Override
	public void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.map);
		 MapsActivityBundle = getIntent().getExtras();
	   UserName = MapsActivityBundle.getString("UserName");
	    coder20 = new Geocoder(this);
	    DestinationET = (EditText) findViewById(R.id.editText1);
	   // progressBar = (ProgressBar) findViewById(R.id.progressBar1);
	    geoCoder = new Geocoder(getApplicationContext(),Locale.US);
	    geoCoder12 = new Geocoder(getApplicationContext(),Locale.US);

		final String[] MapLoading = { "Please Wait , Your Current Location Loading" };
		tts = new TextToSpeech(MapsActivity.this,
				new TextToSpeech.OnInitListener() {

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
	

	    
	  
	    
	  
		
		
			
		/*   MapController mc =   mapView.getController();
		  String coordinates[] = {"6.918588","79.972744"};
		  double lat =  Double.parseDouble(coordinates[0]); 
		  double lng =  Double.parseDouble(coordinates[1]);
		  DestinationET = (EditText) findViewById(R.id.editText1);
		
		  
		  p = new GeoPoint( (int) (lat * 1E6), (int) (lng * 1E6));
		  
		  mc.animateTo(p);
		  mc.setZoom(18);*/
	    mapView = (MapView)  findViewById(R.id.mapView); 
	    mapView.clearAnimation();
		 LinearLayout zoomLayout =  (LinearLayout)findViewById(R.id.zoom);
		 View zoomView = mapView.getZoomControls();
		  mapView.setBuiltInZoomControls(true);
		  zoomLayout.addView(zoomView, new LinearLayout.LayoutParams( LayoutParams.WRAP_CONTENT, LayoutParams.WRAP_CONTENT));
		  mapView.displayZoomControls(true); 
		  mc =   mapView.getController();
		  mapOverlay = new MapOverlay();
		  listOfOverlays = mapView.getOverlays();
		/*  mapView.setSatellite(true); 
		  MapOverlay mapOverlay = new MapOverlay();
		  List<Overlay> listOfOverlays = mapView.getOverlays();
		  listOfOverlays.clear(); 
		  listOfOverlays.add(mapOverlay);*/
		  
		  lm = (LocationManager)getSystemService(Context.LOCATION_SERVICE); 
		  lm.requestLocationUpdates(LocationManager.NETWORK_PROVIDER,0, 0,locationListener);
		//  lm.requestLocationUpdates(LocationManager.GPS_PROVIDER,0, 0,locationListener);
		   MapsActivityBundle = getIntent().getExtras();
		   
		    UserName =  MapsActivityBundle.getString("UserName");
		    
		/*	final String[] texts = { "Hi " + UserName
					+ "! What's Up. Now You are Currently at New Kandy road Malabe" };
			tts = new TextToSpeech(MapsActivity.this,
					new TextToSpeech.OnInitListener() {

						@Override
						public void onInit(int status) {
							// TODO Auto-generated method stub
							if (status != TextToSpeech.ERROR) {
								tts.setLanguage(Locale.UK);

							}
							Random r = new Random();
							String random = texts[r.nextInt(1)];
							tts.speak(random, TextToSpeech.QUEUE_FLUSH, null);

						}
					}); */
		
	
		
		/*lm.removeUpdates(locationListener);
	    lm=null;
	    locationListener=null;*/
	  
		
		
	      //final Location location = lm.getLastKnownLocation(LocationManager.NETWORK_PROVIDER);
		//  Location location  = LocationManager.NETWORK_PROVIDER;
	     // final double longitude = location.getLongitude();  //error occurs here
	    //  final double latitude = location.getLatitude();    //and here
	     
		/*  String coordinates[] = {Double.toString(latitude),Double.toString(longitude)}; 
		  double lat =  Double.parseDouble(coordinates[0]); 
		  double lng =  Double.parseDouble(coordinates[1]);
		  DestinationET = (EditText) findViewById(R.id.editText1);
		  DestinationET.setText(coordinates[0]+ ","+ coordinates[1]);
		  
		  p = new GeoPoint( (int) (lat * 1E6), (int) (lng * 1E6));
		  
		  mc.animateTo(p);
		  mc.setZoom(15);
		  
		  mapView.setSatellite(true); 
		  MapOverlay mapOverlay = new MapOverlay();
		  List<Overlay> listOfOverlays = mapView.getOverlays();
		  listOfOverlays.clear(); listOfOverlays.add(mapOverlay);*/
		

		// coder = new Geocoder(this);

		final Button GoButton = (Button) findViewById(R.id.button1);
		GoButton.setOnClickListener(new OnClickListener() {

			@Override
			public void onClick(View arg0) {
				
				/*String Text1[] = { "Well You want to move to " + Destination
						+ "mmmm" }; */
				if (GoButton.getText().toString().equals("Map this Location")) 
				{
					
					//DestinationET.setText("Hello World");

				    Destination = DestinationET.getText().toString();
				    // DestinationET.setText(" Hello World"+ Destination);
				
					List<Address> address1 ;
					
						try {
							address1 = coder20.getFromLocationName(Destination, 1);
						

					
					
                	
   		 location20 = address1.get(0);
   				
   				 String Latitute = Double.toString(location20.getLatitude()) ;
	             String Longitute = Double.toString(location20.getLongitude());
	             DestinationLatitute = location20.getLatitude();
	             DestinationLongitude = location20.getLongitude();
	             
	             
         // String coordinates1[] = {"6.94613","79.85698"};
	     String coordinates1[] = {Latitute,Longitute}; 
	      
	   //   DestinationET.setText("Hello Miss World");
	 //  DestinationET.setText (Latitute+" "+Longitute);
   				
   				

   			//	DestinationET.setText(Double.toString(location20.getLatitude())+ Double.toString(location20.getLongitude()));
					}
				  // DestinationET.setText(" Inside Transpot Service Lat n Lon"+Double.parseDouble(CurrentLocationLat)+ Double.parseDouble(CurrentLocationLat));
					catch (IOException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
						DestinationET.setText("Some thing wrong here");
					}

				//	mapView.setBuiltInZoomControls(true);
					 new Thread() {
			                @Override
			                public void run() {
			                	//String DestinationForRoute = DestinationET.getText().
			                	
			                       double fromLat =Double.parseDouble(CurrentLocationLat), fromLon = Double.parseDouble(CurrentLocationLon), toLat =location20.getLatitude(), toLon = location20.getLongitude();
			                	//double fromLat =Double.parseDouble(CurrentLocationLat), fromLon = Double.parseDouble(CurrentLocationLon), toLat =6.948111, toLon = 79.860306;
			                	  // double fromLat =6.918588, fromLon = 79.972744, toLat =6.90717, toLon = 79.94545;
			                        String url = RoadProvider
			                                        .getUrl(fromLat, fromLon, toLat, toLon);
			                        InputStream is = getConnection(url);
			                        mRoad = RoadProvider.getRoute(is);
			                        mHandler.sendEmptyMessage(0);
			                }
			        }.start();
			        
			        distance = 0.0;
					
					 
					 Location locationA = new Location("point A");
					 
					 locationA.setLatitude(Double.parseDouble(CurrentLocationLat));
					 locationA.setLongitude(Double.parseDouble(CurrentLocationLon));
					 
					 Location locationB = new Location("point B");
					 
					 locationB.setLatitude(DestinationLatitute);
					 locationB.setLongitude(DestinationLongitude);
					 
					 distance = locationA.distanceTo(locationB); 
					 String  distanceInString = Double.toString(distance); 
					 distanceInINT = (int) distance;
					 
					// DestinationET.setText("Distance is " +  Integer.toString(distanceInINT)+" Meters"); 
					 DestinationET.setText("Current Location" + CurrentLocaitonName); 
					 String Text12 [] = {"Well You want to move to " + Destination+ "." +" Hmm Distance between New Kandy road Malabe , and " +  Destination + "is "+ Integer.toString(distanceInINT) +"Meters" };
							  Random r1 = new Random();
							  String random1 = Text12[r1.nextInt(1)];
							  tts.speak(random1,TextToSpeech.QUEUE_FLUSH, null);
							  
			        
			        

				} 
				else {
					
					
						
						final AlertDialog.Builder builder = new AlertDialog.Builder(MapsActivity.this);
						builder.setMessage("Do you want transport service");
						builder.setCancelable(false);
						builder.setPositiveButton("Yes I want", new DialogInterface.OnClickListener() {
						@Override
							public void onClick(DialogInterface arg0, int arg1) {
								
								//DestinationET.setText("Now Current Location is " + CurrentLocaitonName);
								 Intent i1 = new Intent(MapsActivity.this,Transportoption.class);
								
								 Bundle MapActivityToTransportOptionBundle = new Bundle();
							   		MapActivityToTransportOptionBundle.putString("UserName", UserName);
							   		MapActivityToTransportOptionBundle.putString("CurrentLocationName",CurrentLocaitonName);
							   		MapActivityToTransportOptionBundle.putString("Distance",Integer.toString(distanceInINT));
							   		MapActivityToTransportOptionBundle.putString("Destination",Destination);
							   		i1.putExtras(MapActivityToTransportOptionBundle);
							       startActivity(i1);
						
						
								 
								

								
								
								
								
							}
						});
						builder.setNegativeButton("No Thanks", new DialogInterface.OnClickListener() {
							
							@Override
							public void onClick(DialogInterface arg0, int arg1) {
							  // DestinationET.setText("Inside No Dialog");
							  
								
							}
						});
						AlertDialog alert = builder.create();
						alert.show();
						
					
						
				}
				GoButton.setText("Transport Service Confirmation");
			}
			
			});
	}
	

	
		/*final String[] texts = { "Hi " + UserName
				+ "! What's Up. Now You are Currently at New Kandy road Malabe" };
		tts = new TextToSpeech(MapsActivity.this,
				new TextToSpeech.OnInitListener() {

					@Override
					public void onInit(int status) {
						// TODO Auto-generated method stub
						if (status != TextToSpeech.ERROR) {
							tts.setLanguage(Locale.UK);

						}
						Random r = new Random();
						String random = texts[r.nextInt(1)];
						tts.speak(random, TextToSpeech.QUEUE_FLUSH, null);

					}
				}); */

				
			
		//}
	
/*	public class asyncTaskUpdateProgress extends AsyncTask<Void, Integer, Void> {
		 
	     int progress;
	      
	  @Override
	  protected void onPostExecute(Void result) {
	
		  
	 
	  }
	 
	  @Override
	  protected void onPreExecute() {
	   // TODO Auto-generated method stub
	   progress = 0;
	  }
	 
	  @Override
	  protected void onProgressUpdate(Integer... values) {
	   // TODO Auto-generated method stub
	   progressBar.setProgress(values[0]);
	  }
	 
	  @Override
	  protected Void doInBackground(Void... arg0) {
		
			
		  
	   while(progress<100){
	    progress++;
	    publishProgress(progress);
	    SystemClock.sleep(100); 
	   }
	   return null;
	  }
	      
	    }*/
	
	 

	

	
	private LocationListener  locationListener = new LocationListener() {
			
			@Override
			public void onStatusChanged(String arg0, int arg1, Bundle arg2) {
				// TODO Auto-generated method stub
				
			}
			
			@Override
			public void onProviderEnabled(String arg0) {
				// TODO Auto-generated method stub
				
			}
			
			@Override
			public void onProviderDisabled(String arg0) {
				// TODO Auto-generated method stub
				
			}
			
			@Override
			public void onLocationChanged(Location location) {
				if( location != null)
				{
					
				
				   CurrentLocationLat  = Double.toString(location.getLatitude());
				   CurrentLocationLon  = Double.toString(location.getLongitude());
				   String coordinates[] = {Double.toString(location.getLatitude()),Double.toString(location.getLongitude())}; 
				 // lm.removeUpdates(locationListener);
				//  locationListener = null;
				  
				// String coordinates[] = {"6.946939","79.857559"};
				  double lat =  Double.parseDouble(coordinates[0]); 
				  double lng =  Double.parseDouble(coordinates[1]);
				  //DestinationET = (EditText) findViewById(R.id.editText1);
				//  DestinationET.setText(coordinates[0]+ ","+ coordinates[1]);
				 
				 
				  
				  p = new GeoPoint( (int) ( location.getLatitude() * 1E6),(int) (location.getLongitude() * 1E6));
		
				 // mapView.clearAnimation();
				 mc.animateTo(p);
				 mc.setZoom(20);
				// mc.setCenter(p);
				  
				  
				 mapView.setSatellite(true); 
							 
				
				  mapOverlay = new MapOverlay();
				  listOfOverlays = mapView.getOverlays();
				  listOfOverlays.clear(); 
				  listOfOverlays.add(mapOverlay);
				  mapView.invalidate();
				  try {
			        	
			            List<Address> addresses = geoCoder12.getFromLocation(location.getLatitude(),location.getLongitude(), 1);
			          		           
			           
			            if (addresses.size() > 0) 
			            {
			                for (int i=0; i<addresses.get(0).getMaxAddressLineIndex(); i++)
			                	CurrentLocaitonName += addresses.get(0).getAddressLine(i) + "\n";
			            	
			                	
			            }
			          
			           
			            
			        }
			            catch (IOException e) {                
			                e.printStackTrace();
			              
			            }  
			           
				  
				  
				  
				  
				  
				//  CurrentLocaitonName="Malike Ln Colombo ";
				lm.removeUpdates(locationListener);
				 lm=null;
				final String[] texts = { " Now You are Currently at New Kandy road Malabe" };
					tts = new TextToSpeech(MapsActivity.this,
							new TextToSpeech.OnInitListener() {

								@Override
								public void onInit(int status) {
									// TODO Auto-generated method stub
									if (status != TextToSpeech.ERROR) {
										tts.setLanguage(Locale.UK);

									}
									Random r = new Random();
									String random = texts[r.nextInt(1)];
									tts.speak(random, TextToSpeech.QUEUE_FLUSH, null);

								}
							});
					
					
			
				   
				  
				  
				 
					  
				}
				
					  
				  
				 
				
			}
		};
			
	/*	@Override
		
		protected void onPause() {

		    super.onPause();
		
		    // when our activity pauses, we want to remove listening for location updates

		    lm.removeUpdates(locationListener);
		
		}*/
			
				/*  Random r = new Random(); String random = Text1[r.nextInt(1)];
				  tts.speak(random, TextToSpeech.QUEUE_FLUSH, null);
				  float [] res = new float [10];
				  Location.distanceBetween(6.914807,79.97298, 6.94613, 79.85698, res); 
				  List<Address> address;
				  String Latitute = null; String Longitute =null;*/
				 

				/*  try {
				  
				  address = coder.getFromLocationName(Destination, 1); 
				  Address location = address.get(0);
				  location.getLatitude();
				  location.getLongitude(); 
				  Latitute = Double.toString(location.getLatitude()) ; Longitute =
				  Double.toString(location.getLongitude());  
				  String coordinates1[] = {"6.94613","79.85698"}; 
				  String coordinates1[] = {Latitute,Longitute};
				 
				  DestinationET.setText("Hello Miss World");
				  DestinationET.setText (Latitute+" "+Longitute); 
				  double lat1 = Double.parseDouble(coordinates1[0]); 
				  double lng1 = Double.parseDouble(coordinates1[1]); 
				  p = new GeoPoint( (int) (lat1 * 1E6), (int) (lng1 * 1E6));
				  
				  mc.animateTo(p);
				  mc.setZoom(20);
				  
				  mapView.setSatellite(true); 
				  MapOverlay mapOverlay1 = new  MapOverlay();
				  List<Overlay> listOfOverlays1 =  mapView.getOverlays(); listOfOverlays1.clear();
				  listOfOverlays1.add(mapOverlay1);
				
				  Button TransportButton =(Button) findViewById(R.id.button1);
				  TransportButton.setOnClickListener(new OnClickListener() {
				  
				  @Override public void onClick(View arg0) {
				  
				  
				  Bundle b = new Bundle();
				  b.putString("distance",Integer.toString(distanceInINT ));
				  
				  Intent i = new  Intent(MapsActivity.this,TransportServiceConfirmation.class);
				  i.putExtras(b); 
				  startActivity(i);
				  
				 
				 
				 
				  
				  
				  } });
				 
				  
				  }*/
				 

				/*
				 * if (address == null) { return null; }
				 */

				/*
				 * catch (IOException e) { // TODO Auto-generated catch block
				 * e.printStackTrace();
				 * DestinationET.setText("Some thing wrong"); }
				 */

				/*
				 * double distance;
				 * 
				 * 
				 * Location locationA = new Location("point A");
				 * 
				 * locationA.setLatitude(6.914807);
				 * locationA.setLongitude(79.97298);
				 * 
				 * Location locationB = new Location("point B");
				 * 
				 * locationB.setLatitude(Double.parseDouble(Latitute));
				 * locationB.setLongitude(Double.parseDouble(Longitute));
				 * 
				 * distance = locationA.distanceTo(locationB); String
				 * distanceInString = Double.toString(distance); distanceInINT =
				 * (int) distance;
				 * 
				 * DestinationET.setText("Distance is " +
				 * Integer.toString(distanceInINT)+" Meters"); //
				 * DestinationET.setText("Answer in New Method" +
				 * Float.toString(res[0]));
				 * 
				 * 
				 * String Text12 [] = {"Well You want to move to " +
				 * Destination+ "."
				 * +" Hmm Distance between New Kandy road Malabe , and " +
				 * Destination + Integer.toString(distanceInINT) +"Meters" };
				 * Random r1 = new Random(); String random1 =
				 * Text12[r.nextInt(1)]; tts.speak(random1,
				 * TextToSpeech.QUEUE_FLUSH, null);
				 * 
				 * 
				 * 
				 * 
				 * // mapView.setVisibility(MapView.INVISIBLE); MapView mapView1
				 * = (MapView) findViewById(R.id.MapView01);
				 * mapView1.setVisibility(MapView.VISIBLE); LinearLayout
				 * zoomLayout1 = (LinearLayout)findViewById(R.id.zoom); View
				 * zoomView = mapView1.getZoomControls();
				 * 
				 * zoomLayout1.addView(zoomView, new LinearLayout.LayoutParams(
				 * LayoutParams.WRAP_CONTENT, LayoutParams.WRAP_CONTENT));
				 * mapView1.displayZoomControls(true);
				 */

				/*
				 * p1 = new GeoPoint((int) (location.getLatitude() * 1E6), (int)
				 * (location.getLongitude() * 1E6));
				 * 
				 * return p1;
				 */

	/*		}
		});*/

	



		/*
		 * Button TransportButton =(Button) findViewById(R.id.button2);
		 * TransportButton.setOnClickListener(new OnClickListener() {
		 * 
		 * @Override public void onClick(View arg0) {
		 * 
		 * 
		 * 
		 * 
		 * 
		 * Bundle b = new Bundle();
		 * b.putString("distance",Integer.toString(distanceInINT ));
		 * b.putString("UserName",msg ); b.putString("CurrentLocation",
		 * "New Kandy road Malabe");
		 * //b.putString("destination",DestinationET.getText().toString() );
		 * b.putString("Destination","Newnham Square");
		 * 
		 * Intent i = new
		 * Intent(MapsActivity.this,TransportServiceConfirmation.class);
		 * i.putExtras(b); startActivity(i);
		 * 
		 * 
		 * 
		 * 
		 * 
		 * 
		 * } });
		 */

		// mapView.invalidate();

		/*
		 * Geocoder geoCoder = new Geocoder(getBaseContext(),
		 * Locale.getDefault()); try { /* List<Address> addresses =
		 * geoCoder.getFromLocation( p.getLatitudeE6() / 1E6, p.getLongitudeE6()
		 * / 1E6, 1);
		 */

		/*
		 * List<Address> addresses = geoCoder.getFromLocation( 6.946748 / 1E6,
		 * 79.85698 / 1E6, 1);
		 * 
		 * String add = ""; if (addresses.size() > 0) { for (int i=0;
		 * i<addresses.get(0).getMaxAddressLineIndex(); i++) add +=
		 * addresses.get(0).getAddressLine(i) + "\n"; }
		 * 
		 * Toast.makeText(getBaseContext(), add, Toast.LENGTH_SHORT).show();
		 * System.out.println(add); } catch (IOException e) {
		 * e.printStackTrace(); }
		 */

	
		
		
	
	
	
	  Handler mHandler = new Handler() {
          public void handleMessage(android.os.Message msg) {
            //  TextView textView = (TextView) findViewById(R.id.description);
            //  textView.setText(mRoad.mName + " " + mRoad.mDescription);
              MapOverlay1 mapOverlay = new MapOverlay1(mRoad, mapView);
              List<Overlay> listOfOverlays = mapView.getOverlays();
              listOfOverlays.clear();
              listOfOverlays.add(mapOverlay);
              mapView.invalidate();
              
      };
  };
  
	private InputStream getConnection(String url) {
		InputStream is = null;
		try {
				URLConnection conn = new URL(url).openConnection();
				is = conn.getInputStream();
		} catch (MalformedURLException e) {
          	e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return is;
	}
      

	

	
		









		@Override
		protected boolean isRouteDisplayed() {
			// TODO Auto-generated method stub
			return false;
		}
		
		}

class MapOverlay1 extends com.google.android.maps.Overlay {
    Road mRoad;
    ArrayList<GeoPoint> mPoints;

    public MapOverlay1(Road road, MapView mv) {
            mRoad = road;
            if (road.mRoute.length > 0) {
                    mPoints = new ArrayList<GeoPoint>();
                    for (int i = 0; i < road.mRoute.length; i++) {
                            mPoints.add(new GeoPoint((int) (road.mRoute[i][1] * 1000000),
                                            (int) (road.mRoute[i][0] * 1000000)));
                    }
                    int moveToLat = (mPoints.get(0).getLatitudeE6() + (mPoints.get(
                                    mPoints.size() - 1).getLatitudeE6() - mPoints.get(0)
                                    .getLatitudeE6()) / 2);
                    int moveToLong = (mPoints.get(0).getLongitudeE6() + (mPoints.get(
                                    mPoints.size() - 1).getLongitudeE6() - mPoints.get(0)
                                    .getLongitudeE6()) / 2);
                    GeoPoint moveTo = new GeoPoint(moveToLat, moveToLong);

                   // mv.clearAnimation();
                    MapController mapController = mv.getController();
                    
                    mapController.animateTo(moveTo);
                    mapController.setZoom(15);
            }
    }

    @Override
    public boolean draw(Canvas canvas, MapView mv, boolean shadow, long when) {
            super.draw(canvas, mv, shadow);
            drawPath(mv, canvas);
            return true;
    }

    public void drawPath(MapView mv, Canvas canvas) {
            int x1 = -1, y1 = -1, x2 = -1, y2 = -1;
            Paint paint = new Paint();
            paint.setColor(Color.GREEN);
            paint.setStyle(Paint.Style.STROKE);
            paint.setStrokeWidth(3);
            for (int i = 0; i < mPoints.size(); i++) {
                    Point point = new Point();
                    mv.getProjection().toPixels(mPoints.get(i), point);
                    x2 = point.x;
                    y2 = point.y;
                    if (i > 0) {
                            canvas.drawLine(x1, y1, x2, y2, paint);
                    }
                    x1 = x2;
                    y1 = y2;
            }
    }
}


	