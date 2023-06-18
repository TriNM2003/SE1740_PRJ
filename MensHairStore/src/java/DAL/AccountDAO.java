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
public class AccountDAO extends BaseDAO<Account>{
    
    public void insertAccount(Account ac) {
        try {
            String sql = "INSERT INTO [Account]\n"
                    + "           ([username]\n"
                    + "           ,[password]\n"
                    + "           ,[gmail]\n"
                    + "           ,[rolename])\n"
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
    public Account getAccount(String username) {
        try {
            String sql = "SELECT a.UserId,a.username,a.password,a.gmail, a.role_name FROM Account a\n"
                    + "WHERE a.username = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, username);
            ResultSet rs = statement.executeQuery();
            if (rs.next()) {
                Account a = new Account();
                a.setUserId(rs.getInt("userid"));
                a.setUsername(rs.getString("username"));
                a.setPassword(rs.getString("password"));
                a.setGmail(rs.getString("gmail"));
                a.setRole_name(rs.getString("role_name"));
                return a;
            }

        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
}
