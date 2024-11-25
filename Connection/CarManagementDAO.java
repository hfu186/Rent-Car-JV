package Connection;

import Model.Cars;
import Connection.connect;
import java.util.ArrayList;
import java.util.List;
import java.sql.*;

public class CarManagementDAO {

    private List<Cars> c;

    public CarManagementDAO() {
        this.c = new ArrayList<Cars>();
    }

    public List<Cars> getCars() {
        return c;
    }

    public void getCar(List<Cars> c) {
        this.c = c;
    }

    public void setCarsData() {
        String sql = " select * from VEHICLE";
        try {
            Connection conn = connect.getConnection();
            Statement stm = conn.createStatement();
            ResultSet rs = stm.executeQuery(sql);

            while (rs.next()) {
                int cid = rs.getInt(1);
                String res_no = rs.getString(2);
                String model = rs.getString(3);
                String status = rs.getString(6);
                String type = rs.getString(5);
                int driver_id = rs.getInt(7);
                int price = rs.getInt(8);

                c.add(new Cars(cid, res_no, model, status, type, driver_id, price));
            }
            for (Cars cars : c) {
                System.out.println(cars);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    public boolean deleteCarById(String carId) {
        String sql = "DELETE FROM VEHICLE WHERE car_id = ?";
        try {
            Connection conn = connect.getConnection();
            PreparedStatement pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, carId);
            int rowsAffected = pstmt.executeUpdate();
            return rowsAffected > 0;
          
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean updateCar(int carId, String regNo, String model, String type, String status, int driverId, int price) {
        PreparedStatement pstmt = null;
        String sql = "{CALL UpdateVehicle(?, ?, ?, ?, ?, ?, ?)}";
        try {
            Connection conn = connect.getConnection();
            pstmt = conn.prepareStatement(sql);
            pstmt.setInt(1, carId);
            pstmt.setString(2, regNo);
            pstmt.setString(3, model);
            pstmt.setString(4, type);
            pstmt.setString(5, status);
            pstmt.setInt(6, driverId);
            pstmt.setInt(7, price);
            int rowsUpdated = pstmt.executeUpdate();

            return rowsUpdated > 0;
        } catch (SQLException ex) {
            ex.printStackTrace();
            return false;
        }
    }

}
