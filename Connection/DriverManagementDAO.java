package Connection;

import Model.Drivers;
import Connection.connect;
import java.util.ArrayList;
import java.util.List;
import java.sql.*;

public class DriverManagementDAO {

    private List<Drivers> dv;

    public DriverManagementDAO() {
        this.dv = new ArrayList<Drivers>();
    }

    public List<Drivers> getDrivers() {
        return dv;
    }

    public void getDv(List<Drivers> dv) {
        this.dv = dv;
    }

    public void setDriversData() {
        String sql = " select * from driver";
        try {
            Connection conn = connect.getConnection();
            Statement stm = conn.createStatement();
            ResultSet rs = stm.executeQuery(sql);

            while (rs.next()) {
                int div = rs.getInt(1);
                String Name = rs.getString(2);
                String contact = rs.getString(3);
                int rating = rs.getInt(5);
                String gender = rs.getString(4);
                int age = rs.getInt(6);

                dv.add(new Drivers(div, Name, contact, gender, rating, age));
            }
            for (Drivers drivers : dv) {
                System.out.println(drivers);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public boolean deleteDriverById(String driverId) {
        String sql = "DELETE FROM DRIVER WHERE driver_id = ?";
        try {
            Connection conn = connect.getConnection();
            PreparedStatement pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, driverId);

            int rowsAffected = pstmt.executeUpdate();

            return rowsAffected > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean updateDriver(int did, String Name, String Phone, String gender, int rating, int age) {
        String sql = "UPDATE DRIVER SET  Dname=?, Gender=?, Contact_no=?, Rating=?, Age=? WHERE Driver_id=?";
        try {
           Connection conn = connect.getConnection();
           PreparedStatement pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, Name);
            pstmt.setString(2, gender);
            pstmt.setString(3, Phone);
            pstmt.setInt(4, rating);
            pstmt.setInt(5, age);
            pstmt.setInt(6, did);
            int rowsUpdated = pstmt.executeUpdate();
            return rowsUpdated > 0;
        } catch (SQLException ex) {
            ex.printStackTrace();
            return false;
        }
    }

}
