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
                    + "           ,[role_name])\n"
                    + "     VALUES\n"
                    + "           (?\n"                    
                    + "           ,?\n"
                    + "           ,?\n"
                    + "           ,?)";
            PreparedStatement statement = connection.prepareStatement(sql);
            
            statement.setString(1, ac.getUsername());
            statement.setString(2, ac.getPassword());
            statement.setString(3, ac.getGmail());
            statement.setString(4, ac.getRole_name());
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
                
                Account a = new Account(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5));
                return a;
            }

        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    public Account getAccountByGmail(String gmail) {
        try {
            String sql = "SELECT * FROM Account a\n"
                    + "WHERE a.gmail = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, gmail);
            ResultSet rs = statement.executeQuery();
            if (rs.next()) {
                Account a = new Account(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5));

                return a;
            }

        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    public static void main(String[] args) {
        AccountDAO ad= new AccountDAO();
        Account ac = ad.getAccountByGmail("minhtri147963@gmail.com");
        Account a = ad.getAccount("123456", "123456");
        System.out.println(ac);
        System.out.println(a);
    }
}
