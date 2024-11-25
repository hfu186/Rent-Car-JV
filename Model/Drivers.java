package Model;

public class Drivers {

    public int Driver_id;
    public String Name;
    public String Gender;
    public String Contact_no;
    public int rating;
    public int age;

    public Drivers(int div, String Name, String contact, String Gender, int rating1,int age) {
        this.Driver_id = 0;
        this.Name = new String();
        this.Gender = new String();
        this.Contact_no = new String();
        this.rating = 0;
        this.age = 0;
    }

    public int getID(Drivers dv) {
        return dv.Driver_id;
    }

    public int getDriver_id() {
        return Driver_id;
    }

    public String getName(){
        return Name;
    }
    

    public String getGender() {
        return Gender;
    }

    public String getContact_no() {
        return Contact_no;
    }

    public int getRating() {
        return rating;
    }

    public int getAge() {
        return age;
    }

    public void addRow(Object[] object) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    public void setRowCount(int i) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

}
