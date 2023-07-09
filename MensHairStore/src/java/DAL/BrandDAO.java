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
import model.Brand;

/**
 *
 * @author DELL
 */
public class BrandDAO extends BaseDAO{
    public Brand GetBrand (int brand_id) {
        Brand p= new Brand();
        
        try {
            String sql = "select * from brand where brand_id=? ";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, brand_id);
            ResultSet rs = statement.executeQuery();
            if (rs.next()) {
                p= new Brand(rs.getInt(1),
                                    
                                    rs.getString(2),
                                    rs.getString(3)
                                    
                                    );
            }
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return p;
    }
    public static void main(String[] args) {
        BrandDAO dao = new BrandDAO();
//        ArrayList<Brand> list= dao.getBrand("1");
//        
//        for(Brand o: list){
//            System.out.println(o);
//        }
        Brand p = dao.GetBrand(2);
        System.out.println(p);
    }
}
