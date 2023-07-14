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
    public void deleteOrderDetail(int order_id) {
        try {
            String sql = "delete from OrderDetails where order_id=?";
            PreparedStatement statement = connection.prepareStatement(sql);
            
            statement.setInt(1, order_id );
            
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(OrderDetailDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public ArrayList<OrderDetails> GetOrderDetailsById(String o_id) {
        ArrayList<OrderDetails>  p= new ArrayList<> ();
        
        try {
            String sql = "select * from [OrderDetails] where order_id=? ";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, o_id);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                p.add( new OrderDetails(rs.getInt(1),
                        rs.getInt(2),
                        rs.getInt(3),
                        rs.getFloat(4),
                        rs.getInt(5),
                        rs.getFloat(6)
                                    ));
            }
        } catch (SQLException ex) {
            Logger.getLogger(OrderDetailDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return p;
    }
    public static void main(String[] args) {
        OrderDetailDAO odd = new OrderDetailDAO();
        ArrayList<OrderDetails>  ode = odd.GetOrderDetailsById("8");
        for(OrderDetails o : ode){
            System.out.println(o);
        }
    }
}
