package Connection;

import Connection.connect;
import java.sql.*;

public class UserDAO {

    public int Usr_id;
    public String UName;
    public String Contact_no;
    public String Gender;
    public String Address;

    public UserDAO(int Usr_id, String UName, String Contact_no, String Gender, String Address) {
        this.Usr_id = Usr_id;
        this.UName = UName;
        this.Contact_no = Contact_no;
        this.Gender = Gender;
        this.Address = Address;
    }

    public UserDAO() {
    }

    public int getUsr_id() {
        return Usr_id;
    }

    public String getUName() {
        return UName;
    }

    public String getContact_no() {
        return Contact_no;
    }

    public String getGender() {
        return Gender;
    }

    public String getAddress() {
        return Address;
    }

    public boolean registerUser(String usrName, String usrPass, String name, String contactNo, String gender, String address) {
        try { Connection   conn = connect.getConnection();
            if (conn != null) {
                String sql = "{CALL CreateUserAccount(?, ?, ?, ?, ?, ?)}";      
                CallableStatement  stmt = conn.prepareCall(sql);
                stmt.setString(1, usrName);
                stmt.setString(2, usrPass);
                stmt.setString(3, name);
                stmt.setString(4, contactNo);
                stmt.setString(5, gender);
                stmt.setString(6, address);
                stmt.execute();
                return true;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }
 
}
