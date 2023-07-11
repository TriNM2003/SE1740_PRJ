/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAL;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.OrderDetails;


/**
 *
 * @author DELL
 */
public class OrderDetailDAO extends BaseDAO {
    public void insertOrderDetails(OrderDetails s) {
        try {
            String sql = "insert into OrderDetails(order_id,product_id,price,quantity,total_money )"
                    + "values(?,?,?,?,?)";
            PreparedStatement statement = connection.prepareStatement(sql);
            
            
            statement.setInt(1, s.getOrder_id());
            statement.setInt(2, s.getProduct_id());
            statement.setFloat(3, s.getPrice());
            statement.setInt(4, s.getQuantity());
            statement.setFloat(5, s.getSubtotal());
            
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(OrderDetailDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
