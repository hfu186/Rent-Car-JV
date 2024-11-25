package Model;

import java.util.Date;

public class Books {

    private int rentid;             
    private Date Rent_start_date;          
    private Date Rent_end_date;         
    private int Total_rent_cost;      
    private int Driver_id;        
    private int Usr_id;        
    private int car_id;                    
    private String tripStatus;        
    private String paymentStatus;     

    public Books(int rentid, Date Rent_start_date, Date Rent_end_date, int Total_rent_cost, int Driver_id, int Usr_id, int car_id, String tripStatus, String paymentStatus) {
        this.rentid = rentid;
        this.Rent_start_date = Rent_start_date;
        this.Rent_end_date = Rent_end_date;
        this.Total_rent_cost = Total_rent_cost;
        this.Driver_id = Driver_id;
        this.Usr_id = Usr_id;
        this.car_id = car_id;
        this.tripStatus = tripStatus;
        this.paymentStatus = paymentStatus;
    }

    public int getRentid() {
        return rentid;
    }

    public Date getRent_start_date() {
        return Rent_start_date;
    }

    public Date getRent_end_date() {
        return Rent_end_date;
    }

    public float getTotal_rent_cost() {
        return Total_rent_cost;
    }

    public int getDriver_id() {
        return Driver_id;
    }

    public int getUsr_id() {
        return Usr_id;
    }

    public int getCar_id() {
        return car_id;
    }

    public String getTripStatus() {
        return tripStatus;
    }

    public String getPaymentStatus() {
        return paymentStatus;
    }
}

    