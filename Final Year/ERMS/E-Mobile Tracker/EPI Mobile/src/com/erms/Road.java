
package com.erms;

public class Road {
    
    private String rbt; // Road Block Type
    private String discrb; // User Added Discribtion
    private double  lat; // Latitute of the Location
    private double  lng; // Longtitute of the Location

    /**
     * @return the rbt
     */
    public String getRbt() {
        return rbt;
    }

    /**
     * @param rbt the rbt to set
     */
    public void setRbt(String rbt) {
        this.rbt = rbt;
    }

    /**
     * @return the discrb
     */
    public String getDiscrb() {
        return discrb;
    }

    /**
     * @param discrb the discrb to set
     */
    public void setDiscrb(String discrb) {
        this.discrb = discrb;
    }

    /**
     * @return the lat
     */
    public double getLat() {
        return lat;
    }

    /**
     * @param lat the lat to set
     */
    public void setLat(double  lat) {
        this.lat = lat;
    }

    /**
     * @return the lng
     */
    public double getLng() {
        return lng;
    }

    /**
     * @param lng the lng to set
     */
    public void setLng(double lng) {
        this.lng = lng;
    }   
}
