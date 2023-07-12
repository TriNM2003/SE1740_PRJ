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
import model.Account;
/**
 *
 * @author DELL
 */
public class AccountDAO extends BaseDAO{
    
    public void insertAccount(Account ac) {
        try {
            String sql = "INSERT INTO [Account]\n"
                    + "           ([username]\n"
                    + "           ,[password]\n"
                    + "           ,[gmail]\n"
                    + "           ,[role_id])\n"
                    + "     VALUES\n"
                    + "           (?\n"                    
                    + "           ,?\n"
                    + "           ,?\n"
                    + "           ,?)";
            PreparedStatement statement = connection.prepareStatement(sql);
            
            statement.setString(1, ac.getUsername());
            statement.setString(2, ac.getPassword());
            statement.setString(3, ac.getGmail());
            statement.setInt(4, ac.getRole_id());
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    public Account getAccount(String username,String password) {
        try {
            
            String sql = "SELECT * FROM Account a\n"
                    + "WHERE a.username = ? and password =?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, username);
            statement.setString(2, password);
            ResultSet rs = statement.executeQuery();
            if (rs.next()) {
                
                Account a = new Account(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getInt(5));
                return a;
            }

        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    public Account getAccountById(String id) {
        try {
            String sql = "SELECT * FROM Account a\n"
                    + "WHERE [id] = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, id);
            ResultSet rs = statement.executeQuery();
            if (rs.next()) {
                Account a = new Account(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getInt(5));

                return a;
            }

        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    public ArrayList<Account> getAllAccount() {
        ArrayList<Account> list=new ArrayList<>();
        
        try {
            String sql = "select * from [account]";
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                list.add(new Account(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getInt(5)));
            }
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }
    public void setAdmin(String u_id,String role_id){
        try {
            String sql ="Update [Account] set role_id=? where [id] = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, role_id);
            statement.setString(2, u_id);
            
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    public void deleteAccount(String u_id) {
        try {
            String sql = "delete from [Account] where id=?";
            PreparedStatement statement = connection.prepareStatement(sql);
            
            statement.setString(1, u_id );
            
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    public static void main(String[] args) {
        AccountDAO ad= new AccountDAO();
        ad.setAdmin("3","2");
//        Account a = ad.getAccount("nguyentri16112003", "minhtri16112003");
//        System.out.println(ac);
//        System.out.println(a);
//        ArrayList<Account> list= ad.getAllAccount();
//       
//        for(Account o: list){
//            System.out.println(o);
//        }

    }

    
}
