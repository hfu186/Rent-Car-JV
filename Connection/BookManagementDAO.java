package Connection;

import Model.Books;
import Connection.connect;
import java.util.ArrayList;
import java.util.List;
import java.sql.*;

public class BookManagementDAO {

    private List<Books> b;

    public BookManagementDAO() {
        this.b = new ArrayList<Books>();
    }

    public List<Books> getBooks() {
        return b;
    }

    public void getBooks(List<Books> b) {
        this.b = b;
    }

    public void setBooksData() {
        String sql = " select * from RENT_DETAILS";
        try {
            Connection conn = connect.getConnection();
            Statement stm = conn.createStatement();
            ResultSet rs = stm.executeQuery(sql);

            while (rs.next()) {
                int rid = rs.getInt(1);
                Date startd = rs.getDate(2);
                Date endd = rs.getDate(3);
                int totalcost = rs.getInt(4);
                int driverid = rs.getInt(5);
                int uid = rs.getInt(7);
                int cid = rs.getInt(6);
                String status = rs.getString(8);
                String paymentstatus = rs.getString(9);

                b.add(new Books(rid, startd, endd, totalcost, driverid, cid, uid, paymentstatus, status));
            }
            for (Books books : b) {
                System.out.println(books);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

    }
}
