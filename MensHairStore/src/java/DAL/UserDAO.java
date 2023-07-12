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
import model.User;
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
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
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
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getDate(5),
                        rs.getDate(6));
                
            }
        } catch (SQLException ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
       return p;
    }
    
    public ArrayList<User> getUser() {
        ArrayList<User> list=new ArrayList<>();
        
        try {
            String sql = "select * from [user]";
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                list.add(new User(rs.getInt(1),
                         rs.getString(2),
                         rs.getString(3),
                         rs.getString(4),
                         rs.getDate(5),
                         rs.getDate(6)));
            }
        } catch (SQLException ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }
    public int TotalUser() {
        
        try {
            String sql = "select count(*)  from [User]";
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (SQLException ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return 0;
    }
    public ArrayList<User> GetUserByPaging(int index) {
        ArrayList<User> list=new ArrayList<>();
        
        try {
            String sql = "select * from [user] order by [user_id] offset ? rows fetch next 3 rows only";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1,(index-1)*3);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                list.add(new User(rs.getInt(1),
                         rs.getString(2),
                         rs.getString(3),
                         rs.getString(4),
                         rs.getDate(5),
                         rs.getDate(6)));
            }
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }
    public void deleteUser(String u_id) {
        try {
            String sql = "delete from [User] where user_id=?";
            PreparedStatement statement = connection.prepareStatement(sql);
            
            statement.setString(1, u_id );
            
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
//    public static void main(String[] args) {
//        UserDAO dao = new UserDAO();
//        
//        ArrayList<User> list= dao.GetUserByPaging(0);
//       
//        for(User o: list){
//            System.out.println(o);
//        }
//////        User p = dao.GetUserById("4");
//////        System.out.println(p);
////          System.out.println(dao.TotalUser());  
//    }
    public static void main(String[] args) {
        int u_id= Integer.parseInt("2");
        UserDAO ud = new UserDAO();
        User us =ud.GetUserById(u_id);
        System.out.println(us);
    }
}
