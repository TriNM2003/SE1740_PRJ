/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAL;

import model.Order;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;


/**
 *
 * @author DELL
 */
public class OrderDAO extends BaseDAO {
    public Order GetOrderById(String u_id) {
        Order p= new Order();
        
        try {
            String sql = "select * from [order] where user_id=? ";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, u_id);
            ResultSet rs = statement.executeQuery();
            if (rs.next()) {
                p= new Order(rs.getInt(1),
                        rs.getInt(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getDate(8),
                        rs.getInt(9),
                        rs.getFloat(10));
            }
        } catch (SQLException ex) {
            Logger.getLogger(OrderDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return p;
    }
    public void deleteOrder(String u_id) {
        try {
            String sql = "delete from Order where user_id=?";
            PreparedStatement statement = connection.prepareStatement(sql);
            
            statement.setString(1, u_id );
            
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(OrderDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
