/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAL;

import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.User;

/**
 *
 * @author DELL
 */
public class UserDAO extends BaseDAO {

    public void insertUser(User u) {
        try {
            String sql = "DECLARE @AccountId INT;\n"
                    + "SET @AccountId = SCOPE_IDENTITY();\n"
                    + "\n"
                    + "INSERT INTO [User] ([user_id], [fullname], [address], [gmail], [phone_number], [create_time], [update_time], [deleted])\n"
                    + "VALUES(@AccountId,?,?,?,?,?,?,?) ";
                    
            PreparedStatement statement = connection.prepareStatement(sql);

            statement.setString(1, u.getFullname());
            statement.setString(2, u.getAddress());
            statement.setString(4, u.getPhone_number());
            statement.setDate(5, u.getCreate_time());
            statement.setDate(6, u.getUpdate_time());
            statement.setInt(7, u.getDelete());
            
            
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
