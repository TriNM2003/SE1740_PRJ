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
import model.Gallery;

/**
 *
 * @author DELL
 */
public class GalleryDAO extends BaseDAO {
    public ArrayList<Gallery> getGallery(String product_id) {
        ArrayList<Gallery> list=new ArrayList<>();
        
        try {
            String sql = "select  * from gallery where product_id=?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, product_id);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                 list.add(new Gallery(rs.getInt(1),
                                    rs.getInt(2),
                                    rs.getString(3)));
            }
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }
    public Gallery GetThumbnailById(String gallery_id) {
        Gallery p= new Gallery();
        
        try {
            String sql = "select * from gallery where gallery_id=? ";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, gallery_id);
            ResultSet rs = statement.executeQuery();
            if (rs.next()) {
                p= new Gallery(rs.getInt(1),
                                    rs.getInt(2),
                                    rs.getString(3)
                                    );
            }
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return p;
    }
    public void insertProduct(Gallery s) {
        try {
            String sql ="insert into gallery(product_id,thumbnail)"
                    + "values(?,?)";
            PreparedStatement statement = connection.prepareStatement(sql);
            
            
            statement.setInt(1, s.getProduct_id());
            
            statement.setString(2, s.getThumbnail());
            
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    public void deleteGallery(String p_id) {
        try {
            String sql = "delete from Gallery where product_id=?";
            PreparedStatement statement = connection.prepareStatement(sql);
            
            statement.setString(1, p_id );
            
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    public static void main(String[] args) {
        GalleryDAO dao = new GalleryDAO();
//        ArrayList<Gallery> list= dao.getGallery("1");
//        
//        for(Gallery o: list){
//            System.out.println(o);
//        }
        Gallery p = dao.GetThumbnailById("4");
        System.out.println(p);
    }
}
