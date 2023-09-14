/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAL;

import model.Order;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;


/**
 *
 * @author DELL
 */
public class OrderDAO extends BaseDAO {
    public Order GetOrderByO_Id(String u_id) {
        Order p= new Order();
        
        try {
            String sql = "select top 1 * from [order] where [user_id]=?  order by order_id desc";
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
    public Order GetOrderById(String u_id) {
        Order p= new Order();
        
        try {
            String sql = "select * from [order] where [order_id]=?  ";
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
    public void deleteOrder(String o_id) {
        try {
            String sql = "delete from [Order] where order_id=?";
            PreparedStatement statement = connection.prepareStatement(sql);
            
            statement.setString(1, o_id );
            
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(OrderDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    public ArrayList<Order> OrderOfUser(String u_id) {
        ArrayList<Order> list= new ArrayList<>();
        
        try {
            String sql = "select  * from [order] where [user_id]= ?  ";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, u_id);
            ResultSet rs = statement.executeQuery();
            while(rs.next()){
            list.add(new Order(rs.getInt(1),
                         rs.getInt(2),
                         rs.getString(3),
                         rs.getString(4),
                         rs.getString(5),
                         rs.getString(6),
                         rs.getString(7),
                         rs.getDate(8),
                         rs.getInt(9),
                         rs.getFloat(10)
                                    ));
            }
        } catch (SQLException ex) {
            Logger.getLogger(OrderDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }
    public void insertOrder(Order s) {
        try {
            String sql = "insert into [Order]([user_id],[fullname],[address],[gmail],[note],[phone_number],[order_date],[status],[total_money])\n" +
                        "values(?,?,?,?,?,?,getDate(),1,?)";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, s.getUser_id());
            statement.setString(2, s.getFullname() );
            statement.setString(3, s.getAddress() );
            statement.setString(4, s.getGmail() );
            statement.setString(5, s.getNote() );
            statement.setString(6, s.getPhone_number() );
                    
            statement.setFloat(7, s.getTotal_money() );
            
            
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(OrderDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    public void updateOrder(Order o) {
        try {
            String sql = "update [Order] set [fullname]=?, [address]=?,[phone_number]=?,[note]=?, [status]=? where order_id=?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1,o.getFullname() );
            statement.setString(2,o.getAddress() );
            statement.setString(3,o.getPhone_number() );
            statement.setString(4,o.getNote() );
            statement.setInt(5,o.getStatus() );
            statement.setInt(6,o.getOrder_id() );
            
            
            
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(OrderDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public ArrayList<Order> AllOrder() {
        ArrayList<Order> list=new ArrayList<>();
        
        try {
            String sql = "select  * from [Order]";
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                 list.add(new Order(rs.getInt(1),
                         rs.getInt(2),
                         rs.getString(3),
                         rs.getString(4),
                         rs.getString(5),
                         rs.getString(6),
                         rs.getString(7),
                         rs.getDate(8),
                         rs.getInt(9),
                         rs.getFloat(10)
                                    ));
            }
        } catch (SQLException ex) {
            Logger.getLogger(OrderDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }
    public static void main(String[] args) {
        OrderDAO od = new OrderDAO();
//        ArrayList<Order> list= od.OrderOfUser("2");
//        for(Order o:list){
//            System.out.println(o);
//        }
        Order o = new Order();
        

//            od.deleteOrder("7");
//
//        Order od1 = od.GetOrderById(Integer.toString(1));
//            System.out.println(od1);
    }
}
