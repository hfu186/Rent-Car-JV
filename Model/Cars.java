package Model;
import java.util.Date;
public class Cars {
    public int ID;
    public String res_no;
    public String model;
    public String type;
    public String status;
    public int did;
    public int price;
    
    public Cars(int ID,String res_no,String model,String type,String status,int did,int price){
        this.ID=0;
        this.status=new String();
        this.model=new String();
        this.res_no=new String();
        this.did=0;
        this.price=0;
    }

    public int getID() {
        return ID;
    }

    public String getRes_no() {
        return res_no;
    }

    public String getModel() {
        return model;
    }

    public String getType() {
        return type;
    }

    public String getStatus() {
        return status;
    }

    public int getDid() {
        return did;
    }

    public int getPrice() {
        return price;
    }

}
