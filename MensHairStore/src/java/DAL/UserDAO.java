/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAL;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Product;
import model.User;

/**
 *
 * @author DELL
 */
public class UserDAO extends BaseDAO {

    public void insertUser(User u) {
        try {
            String sql = "INSERT INTO [User] ([user_id], [fullname], [address], [phone_number], [create_time], [update_time])\n"
                    + "VALUES(?,?,?,?,getDate(),getDate()) ";
                    
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, u.getUser_id());
            statement.setString(2, u.getFullname());
            statement.setString(3, u.getAddress());
            statement.setString(4, u.getPhone_number());
            
            
            
            
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    public User GetUserById(int user_id) {
        User p= new User();
        
        try {
            String sql = "select * from [User] where [user_id] = ? ";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, user_id);
            ResultSet rs = statement.executeQuery();
            if (rs.next()) {
                p = new User(user_id,
                        rs.getString("2"),
                        rs.getString("3"),
                        rs.getString("4"),
                        rs.getDate("5"),
                        rs.getDate("6"));
                
            }
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
       return p;
    }
    public static void main(String[] args) {
        UserDAO ud=new UserDAO();
        User us= ud.GetUserById(1);
        System.out.println(us);
    }
}
