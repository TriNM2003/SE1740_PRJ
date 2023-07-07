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
import model.Category;

/**
 *
 * @author DELL
 */
public class CategoryDAO extends BaseDAO {
    public ArrayList<Category> getCategory() {
        ArrayList<Category> list=new ArrayList<>();
        
        try {
            String sql = "select * from category";
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                 list.add(new Category(rs.getInt(1), rs.getString(2)));
            }
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }
    public static void main(String[] args) {
        CategoryDAO dao = new CategoryDAO();
        ArrayList<Category> list= dao.getCategory();
        for(Category o: list){
            System.out.println(o);
        }
    }
}
