package Connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.*;

public class connect {

    public static Connection getConnection() {
        Connection conn = null;
        try {

            Class.forName("com.mysql.cj.jdbc.Driver");

            // Establish connection to the database
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/rent_car", "root", "");

            System.out.println("Connected to the database!");
        } catch (Exception ex) { // Catch any exceptions (ClassNotFoundException, SQLException, etc.)
            System.out.println("Failed to connect to the database!");
            ex.printStackTrace();
        }
        return conn;
    }

    public static void main(String[] args) {
        String url = "jdbc:mysql://127.0.0.1:3306/rent_car?user=root";
        try {
            Class.forName("com.mysql.jdbc.Driver");

            // Kết nối tới cơ sở dữ liệu
            Connection conn = DriverManager.getConnection(url);
            System.out.println("connect successfully!");

            // Tạo câu lệnh SQL
            String query = "SELECT * FROM User";  // Ví dụ truy vấn bảng 'users'
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery(query);

            // Xử lý kết quả truy vấn
            while (rs.next()) {
                System.out.println("ID: " + rs.getInt("Usr_id") + ", Name: " + rs.getString("UName"));
            }

            // Đóng kết nối
            conn.close();

        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            System.out.println("defeat!");
        }
    }
}
