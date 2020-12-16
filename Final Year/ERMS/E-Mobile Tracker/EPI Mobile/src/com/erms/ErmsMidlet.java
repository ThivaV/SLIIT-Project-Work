/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.erms;

import javax.microedition.io.Connector;
import javax.microedition.lcdui.Alert;
import javax.microedition.lcdui.Choice;
import javax.microedition.lcdui.ChoiceGroup;
import javax.microedition.lcdui.Command;
import javax.microedition.lcdui.CommandListener;
import javax.microedition.lcdui.Display;
import javax.microedition.lcdui.Displayable;
import javax.microedition.lcdui.Form;
import javax.microedition.lcdui.TextField;
import javax.microedition.location.Location;
import javax.microedition.location.LocationProvider;
import javax.microedition.location.QualifiedCoordinates;
import javax.microedition.midlet.*;
import javax.wireless.messaging.MessageConnection;
import javax.wireless.messaging.TextMessage;

/**
 * @author User
 */
public class ErmsMidlet extends MIDlet implements CommandListener {

    private Form mainform;
    private Form latlng;
    private ChoiceGroup chb;
    private TextField describtion;
    private Command getcordinate;
    private Command backmain;
    private Command sndmsg;
    private Display dsp;
    private double lat;
    private double lng;
    Road road;

    public void startApp() {
        try {
            mainform = new Form("E-Path Identifier");
            latlng = new Form("Find Geo Cordinates");
            describtion = new TextField("Discribtion", "", 1000, TextField.ANY);
            describtion.setPreferredSize(100, 100);
            chb = new ChoiceGroup("Road Block Type", Choice.POPUP);
            getcordinate = new Command("Next==>", Command.OK, 5);
            backmain = new Command("<==Back", Command.OK, 5);
            sndmsg = new Command("Send Msg==>", Command.OK, 5);
            road = new Road();
            chb.append("Accident:", null);
            chb.append("Trafic:", null);

            dsp = Display.getDisplay(this);
            mainform.append(chb);
            mainform.append(describtion);
            latlng.addCommand(backmain);
            latlng.addCommand(sndmsg);
            latlng.setCommandListener(this);
            mainform.addCommand(getcordinate);
            mainform.setCommandListener(this);
            dsp.setCurrent(mainform);
        } catch (Exception ex) {
            ex.printStackTrace();
        }



    }

    public void pauseApp() {
    }

    public void destroyApp(boolean unconditional) {
    }

    public void commandAction(Command c, Displayable d) {
        if (c == getcordinate) {
            try {
                road.setDiscrb(describtion.getString());
                road.setRbt(chb.getString(chb.getSelectedIndex()));

                LocationProvider lp = LocationProvider.getInstance(null);
                Location l = lp.getLocation(500);

                if (l.isValid()) {
                    QualifiedCoordinates q = l.getQualifiedCoordinates();
                    lat = q.getLatitude();
                    lng = q.getLongitude();
                    road.setLat(lat);
                    road.setLng(lng);
                    latlng.append("Latitude is : " + lat);
                    latlng.append("Longitude is :" + lng);

                   
                    dsp.setCurrent(latlng);

                }

            } catch (Exception ex) {
                ex.printStackTrace();
            }

        } else if (c == backmain) {
            dsp.setCurrent(mainform);
        } else if (c == sndmsg) {
           new SMSSender().start();

        }

    }     
    
        private class SMSSender extends Thread {
        public void run() {
            try {
                
                MessageConnection mCon = (MessageConnection) Connector.open("sms://" + "0776028421" + ":50000");

                TextMessage msg = (TextMessage) mCon.newMessage(MessageConnection.TEXT_MESSAGE);

                msg.setPayloadText(road.getRbt()+"*"+road.getDiscrb()+"*"+lat+"*"+lng);

                mCon.send(msg);

                Alert a = new Alert("SMS Sent Successfully");

                dsp.setCurrent(a);

            } catch (Exception ex) {
                ex.printStackTrace();
            }

        }
    }

}
