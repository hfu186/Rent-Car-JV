package view;

import Connection.connect;
import main.*;
import java.sql.*;
import javax.swing.JOptionPane;

public class bill extends javax.swing.JPanel {

    public bill() {
        initComponents();
        loadBill();
    }

    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jLabel3 = new javax.swing.JLabel();
        jLabel4 = new javax.swing.JLabel();
        jLabel5 = new javax.swing.JLabel();
        jSeparator1 = new javax.swing.JSeparator();
        jLabel6 = new javax.swing.JLabel();
        jLabel7 = new javax.swing.JLabel();
        jLabel8 = new javax.swing.JLabel();
        jLabel9 = new javax.swing.JLabel();
        jLabel10 = new javax.swing.JLabel();
        jLabel11 = new javax.swing.JLabel();
        jSeparator2 = new javax.swing.JSeparator();
        jLabel13 = new javax.swing.JLabel();
        jLabel14 = new javax.swing.JLabel();
        jButton1 = new javax.swing.JButton();
        jButton2 = new javax.swing.JButton();
        jLabel15 = new javax.swing.JLabel();
        jLabel12 = new javax.swing.JLabel();
        Uname = new javax.swing.JLabel();
        puDate = new javax.swing.JLabel();
        type = new javax.swing.JLabel();
        price = new javax.swing.JLabel();
        totalcost = new javax.swing.JLabel();
        phone = new javax.swing.JLabel();
        doDate = new javax.swing.JLabel();
        name = new javax.swing.JLabel();
        totalDay = new javax.swing.JLabel();
        ID = new javax.swing.JLabel();
        date = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();

        setBackground(new java.awt.Color(255, 255, 255));
        setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jLabel3.setBackground(new java.awt.Color(102, 204, 255));
        jLabel3.setFont(new java.awt.Font("Tahoma", 1, 48)); // NOI18N
        jLabel3.setText("INVOICE");
        add(jLabel3, new org.netbeans.lib.awtextra.AbsoluteConstraints(260, 0, -1, -1));

        jLabel4.setFont(new java.awt.Font("Tahoma", 1, 18)); // NOI18N
        jLabel4.setText("Invoice Number:");
        add(jLabel4, new org.netbeans.lib.awtextra.AbsoluteConstraints(20, 70, -1, -1));

        jLabel5.setFont(new java.awt.Font("Tahoma", 1, 18)); // NOI18N
        jLabel5.setText("Date:");
        add(jLabel5, new org.netbeans.lib.awtextra.AbsoluteConstraints(20, 100, -1, -1));

        jSeparator1.setBackground(new java.awt.Color(0, 0, 0));
        jSeparator1.setForeground(new java.awt.Color(0, 0, 0));
        add(jSeparator1, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 130, 800, 10));

        jLabel6.setFont(new java.awt.Font("Tahoma", 1, 18)); // NOI18N
        jLabel6.setText("User Name:");
        add(jLabel6, new org.netbeans.lib.awtextra.AbsoluteConstraints(40, 160, 110, -1));

        jLabel7.setFont(new java.awt.Font("Tahoma", 1, 18)); // NOI18N
        jLabel7.setText("Pick-Up Date:");
        add(jLabel7, new org.netbeans.lib.awtextra.AbsoluteConstraints(40, 220, -1, -1));

        jLabel8.setFont(new java.awt.Font("Tahoma", 1, 18)); // NOI18N
        jLabel8.setText("Drop-Off Date:");
        add(jLabel8, new org.netbeans.lib.awtextra.AbsoluteConstraints(400, 220, -1, -1));

        jLabel9.setFont(new java.awt.Font("Tahoma", 1, 18)); // NOI18N
        jLabel9.setText("Phone Number:");
        add(jLabel9, new org.netbeans.lib.awtextra.AbsoluteConstraints(400, 160, 150, -1));

        jLabel10.setFont(new java.awt.Font("Tahoma", 1, 18)); // NOI18N
        jLabel10.setText("Type Of Car:");
        add(jLabel10, new org.netbeans.lib.awtextra.AbsoluteConstraints(40, 280, 120, -1));

        jLabel11.setFont(new java.awt.Font("Tahoma", 1, 18)); // NOI18N
        jLabel11.setText("Total Day:");
        add(jLabel11, new org.netbeans.lib.awtextra.AbsoluteConstraints(400, 340, 100, -1));

        jSeparator2.setForeground(new java.awt.Color(0, 0, 0));
        add(jSeparator2, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 440, 760, 20));

        jLabel13.setFont(new java.awt.Font("Tahoma", 1, 18)); // NOI18N
        jLabel13.setText("Total Cost:");
        add(jLabel13, new org.netbeans.lib.awtextra.AbsoluteConstraints(40, 400, 100, 20));

        jLabel14.setFont(new java.awt.Font("Tahoma", 1, 18)); // NOI18N
        jLabel14.setText("The Price For One Day:");
        add(jLabel14, new org.netbeans.lib.awtextra.AbsoluteConstraints(40, 340, 230, -1));

        jButton1.setBackground(new java.awt.Color(51, 204, 0));
        jButton1.setFont(new java.awt.Font("Tahoma", 1, 30)); // NOI18N
        jButton1.setForeground(new java.awt.Color(255, 255, 255));
        jButton1.setText("PAY");
        jButton1.setToolTipText("");
        jButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton1ActionPerformed(evt);
            }
        });
        add(jButton1, new org.netbeans.lib.awtextra.AbsoluteConstraints(580, 510, 150, -1));

        jButton2.setBackground(new java.awt.Color(255, 51, 51));
        jButton2.setFont(new java.awt.Font("Tahoma", 1, 30)); // NOI18N
        jButton2.setForeground(new java.awt.Color(255, 255, 255));
        jButton2.setText("CANCEL");
        jButton2.setActionCommand("");
        jButton2.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton2ActionPerformed(evt);
            }
        });
        add(jButton2, new org.netbeans.lib.awtextra.AbsoluteConstraints(580, 580, 150, -1));

        jLabel15.setIcon(new javax.swing.ImageIcon(getClass().getResource("/image/10.png"))); // NOI18N
        jLabel15.setText("jLabel15");
        add(jLabel15, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 446, 560, 230));

        jLabel12.setFont(new java.awt.Font("Tahoma", 1, 18)); // NOI18N
        jLabel12.setText("Name Of Car:");
        add(jLabel12, new org.netbeans.lib.awtextra.AbsoluteConstraints(400, 280, 140, -1));

        Uname.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N
        Uname.setText("jLabel16");
        add(Uname, new org.netbeans.lib.awtextra.AbsoluteConstraints(160, 160, -1, -1));

        puDate.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N
        puDate.setText("jLabel17");
        add(puDate, new org.netbeans.lib.awtextra.AbsoluteConstraints(180, 220, -1, -1));

        type.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N
        type.setText("jLabel18");
        add(type, new org.netbeans.lib.awtextra.AbsoluteConstraints(160, 280, -1, -1));

        price.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N
        price.setText("jLabel19");
        add(price, new org.netbeans.lib.awtextra.AbsoluteConstraints(260, 340, -1, -1));

        totalcost.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N
        totalcost.setText("jLabel20");
        add(totalcost, new org.netbeans.lib.awtextra.AbsoluteConstraints(150, 400, -1, -1));

        phone.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N
        phone.setText("jLabel21");
        add(phone, new org.netbeans.lib.awtextra.AbsoluteConstraints(550, 160, -1, -1));

        doDate.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N
        doDate.setText("jLabel22");
        add(doDate, new org.netbeans.lib.awtextra.AbsoluteConstraints(540, 220, -1, -1));

        name.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N
        name.setText("jLabel23");
        add(name, new org.netbeans.lib.awtextra.AbsoluteConstraints(530, 280, -1, -1));

        totalDay.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N
        totalDay.setText("jLabel24");
        add(totalDay, new org.netbeans.lib.awtextra.AbsoluteConstraints(500, 340, -1, -1));

        ID.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N
        ID.setText("jLabel25");
        add(ID, new org.netbeans.lib.awtextra.AbsoluteConstraints(200, 70, -1, -1));

        date.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N
        date.setText("jLabel26");
        add(date, new org.netbeans.lib.awtextra.AbsoluteConstraints(80, 100, -1, -1));

        jLabel2.setIcon(new javax.swing.ImageIcon(getClass().getResource("/image/z6021808914506_e57b403a746d5ddaabc7ab1e8ee18d3f.jpg"))); // NOI18N
        add(jLabel2, new org.netbeans.lib.awtextra.AbsoluteConstraints(680, 20, -1, -1));
    }// </editor-fold>//GEN-END:initComponents

    private void jButton2ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton2ActionPerformed
        int id = getUserIdbyName();
        String status = "Available";
        String carMod = (String) name.getText();
        int carid = getCarIdByModel(carMod);
        updateVehicleStatus(carid, status);
        cancelRentalRequest(id);
        new HomepageUser().setVisible(true);
        this.setVisible(false);
    }//GEN-LAST:event_jButton2ActionPerformed

    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton1ActionPerformed
        payRental();
        new HomepageUser().setVisible(true);
        int id = getUserIdbyName();
        String status = "Busy";
        String carMod = (String) name.getText();
        int carid = getCarIdByModel(carMod);
        updateVehicleStatus(carid, status);
        this.setVisible(false);
    }//GEN-LAST:event_jButton1ActionPerformed


    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JLabel ID;
    private javax.swing.JLabel Uname;
    private javax.swing.JLabel date;
    private javax.swing.JLabel doDate;
    private javax.swing.JButton jButton1;
    private javax.swing.JButton jButton2;
    private javax.swing.JLabel jLabel10;
    private javax.swing.JLabel jLabel11;
    private javax.swing.JLabel jLabel12;
    private javax.swing.JLabel jLabel13;
    private javax.swing.JLabel jLabel14;
    private javax.swing.JLabel jLabel15;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabel6;
    private javax.swing.JLabel jLabel7;
    private javax.swing.JLabel jLabel8;
    private javax.swing.JLabel jLabel9;
    private javax.swing.JSeparator jSeparator1;
    private javax.swing.JSeparator jSeparator2;
    private javax.swing.JLabel name;
    private javax.swing.JLabel phone;
    private javax.swing.JLabel price;
    private javax.swing.JLabel puDate;
    private javax.swing.JLabel totalDay;
    private javax.swing.JLabel totalcost;
    private javax.swing.JLabel type;
    // End of variables declaration//GEN-END:variables
   private void loadBill() {
        String sql = "{ CALL GetInvoiceDetails() }";
        try (Connection conn = connect.getConnection(); CallableStatement cst = conn.prepareCall(sql)) {
            ResultSet rs = cst.executeQuery();
            if (rs.next()) {
                ID.setText(rs.getString("InvoiceNumber"));
                date.setText(rs.getDate("InvoiceDate").toLocalDate().toString());
                Uname.setText(rs.getString("UserName"));
                phone.setText(rs.getString("PhoneNumber"));
                puDate.setText(rs.getDate("PickUpDate").toString());
                doDate.setText(rs.getDate("DropOffDate").toString());
                type.setText(rs.getString("TypeOfCar"));
                name.setText(rs.getString("NameOfCar"));
                price.setText(String.valueOf(rs.getDouble("PricePerDay")));
                totalDay.setText(String.valueOf(rs.getInt("TotalDays")));
                totalcost.setText(String.valueOf(rs.getDouble("TotalCost")));
            } else {
                JOptionPane.showMessageDialog(this, "No invoice found for this user.", "Error", JOptionPane.ERROR_MESSAGE);
            }

        } catch (SQLException e) {
            JOptionPane.showMessageDialog(this, "Error fetching invoice details: " + e.getMessage(), "Error", JOptionPane.ERROR_MESSAGE);
        }
    }

    public static void cancelRentalRequest(int id) {
        String sql = "{ CALL CancelRent(?) }";
        
        try (Connection conn = connect.getConnection(); CallableStatement stmt = conn.prepareCall(sql)) {
            stmt.setInt(1, id);
            stmt.execute();

            System.out.println("Rental request has been successfully cancelled and all associated details have been deleted.");

        } catch (SQLException e) {

            System.err.println("Error occurred while cancelling the rental request: " + e.getMessage());
        }
    }

    private void payRental() {
        String GetUserId = "SELECT Usr_id FROM user WHERE UName = ?";
        String GetRentId = "SELECT Rent_id FROM rent_details WHERE Usr_id = ? AND Payment_status != 'Paid' LIMIT 1";
        String UpdatePaymentStatus = "UPDATE rent_details SET Payment_status = 'Paid' WHERE Rent_id = ?";

        try (Connection conn = connect.getConnection(); PreparedStatement stmtGetUserId = conn.prepareStatement(GetUserId); PreparedStatement stmtGetRentId = conn.prepareStatement(GetRentId); PreparedStatement stmtUpdate = conn.prepareStatement(UpdatePaymentStatus)) {

            stmtGetUserId.setString(1, Uname.getText());
            try (ResultSet rsUser = stmtGetUserId.executeQuery()) {
                if (!rsUser.next()) {
                    showError("User not found.");
                    return;
                }
                int userId = rsUser.getInt("Usr_id");

                stmtGetRentId.setInt(1, userId);
                try (ResultSet rsRent = stmtGetRentId.executeQuery()) {
                    if (!rsRent.next()) {
                        showError("No rental found for the current user or payment already made.");
                        return;
                    }
                    int rentId = rsRent.getInt("Rent_id");
                    stmtUpdate.setInt(1, rentId);
                    if (stmtUpdate.executeUpdate() > 0) {
                        showSuccess("Payment was successful. Status updated to 'Paid'.");
                    } else {
                        showError("No active rental found for payment.");
                    }
                }
            }
        } catch (SQLException e) {
            showError("Error occurred while processing payment: " + e.getMessage());
        }
    }

    private void showError(String message) {
        JOptionPane.showMessageDialog(this, message, "Error", JOptionPane.ERROR_MESSAGE);
    }

    private void showSuccess(String message) {
        JOptionPane.showMessageDialog(this, message, "Payment Success", JOptionPane.INFORMATION_MESSAGE);
    }

    private int getUserIdbyName() {
        String sql = "SELECT Usr_id FROM USER WHERE UName = ?";
        int userId = -1;

        try (Connection conn = connect.getConnection(); PreparedStatement stmt = conn.prepareStatement(sql)) {

            String username = Uname.getText();
            stmt.setString(1, username);

            try (ResultSet rs = stmt.executeQuery()) {
                if (rs.next()) {
                    userId = rs.getInt("Usr_id");
                }
            }
        } catch (SQLException e) {
        }

        return userId;
    }

    private int getCarIdByModel(String carModel) {
        String query = "SELECT car_id FROM VEHICLE WHERE car_Model = ?";
        try (Connection conn = connect.getConnection(); PreparedStatement stmt = conn.prepareStatement(query)) {
            stmt.setString(1, carModel);
            ResultSet rs = stmt.executeQuery();
            if (rs.next()) {
                return rs.getInt("car_id");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return -1;
    }

    public void updateVehicleStatus(int carId, String status) {
        String query = "UPDATE VEHICLE SET Status = ? WHERE car_id = ?";

        try (Connection conn = connect.getConnection(); PreparedStatement pstmt = conn.prepareStatement(query)) {
            pstmt.setString(1, status);
            pstmt.setInt(2, carId);
            int rowsUpdated = pstmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
