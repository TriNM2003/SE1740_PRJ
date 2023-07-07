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
import model.subCategory;

/**
 *
 * @author DELL
 */
public class subCategoryDAO extends BaseDAO {
    public ArrayList<subCategory> getsubCategory() {
        ArrayList<subCategory> list=new ArrayList<>();
        
        try {
            String sql = "select * from subcategory";
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                 list.add(new subCategory(rs.getInt(1),rs.getInt(2), rs.getString(3)));
            }
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }
    public static void main(String[] args) {
        subCategoryDAO dao = new subCategoryDAO();
        ArrayList<subCategory> list= dao.getsubCategory();
        for(subCategory o: list){
            System.out.println(o);
        }
    }
}
