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
import java.sql.Date;

import model.Product;

/**
 *
 * @author DELL
 */
public class ProductDAO  extends BaseDAO {
    public ArrayList<Product> Newproduct() {
        ArrayList<Product> list=new ArrayList<>();
        
        try {
            String sql = "select TOP 3 * from product order by create_time desc";
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                 list.add(new Product(rs.getInt(1),
                                    rs.getString(2),
                                    rs.getInt(3),
                                    rs.getInt(4),
                                    rs.getFloat(5),
                                    rs.getDate(6),
                                    rs.getDate(7),
                                    rs.getString(8)
                                    ));
            }
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }
    
    public ArrayList<Product> HomeProduct() {
        ArrayList<Product> list=new ArrayList<>();
        
        try {
            String sql = "select TOP 6 * from product";
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                 list.add(new Product(rs.getInt(1),
                                    rs.getString(2),
                                    rs.getInt(3),
                                    rs.getInt(4),
                                    rs.getFloat(5),
                                    rs.getDate(6),
                                    rs.getDate(7),
                                    rs.getString(8)
                                    ));
            }
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }
    
    public ArrayList<Product> AllProduct() {
        ArrayList<Product> list=new ArrayList<>();
        
        try {
            String sql = "select * from product";
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                 list.add(new Product(rs.getInt(1),
                                    rs.getString(2),
                                    rs.getInt(3),
                                    rs.getInt(4),
                                    rs.getFloat(5),
                                    rs.getDate(6),
                                    rs.getDate(7),
                                    rs.getString(8)
                                    ));
            }
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }
    
    public ArrayList<Product> GetProductByCategory(String category_id) {
        ArrayList<Product> list=new ArrayList<>();
        
        try {
            String sql = "select * from product where category_id=? ";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, category_id);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                 list.add(new Product(rs.getInt(1),
                                    rs.getString(2),
                                    rs.getInt(3),
                                    rs.getInt(4),
                                    rs.getFloat(5),
                                    rs.getDate(6),
                                    rs.getDate(7),
                                    rs.getString(8)
                                    ));
            }
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }
    public ArrayList<Product> GetSimilarProduct(int category_id) {
        ArrayList<Product> list=new ArrayList<>();
        
        try {
            String sql = "select TOP 3 * from product where category_id=? ORDER BY NEWID()";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, category_id);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                 list.add(new Product(rs.getInt(1),
                                    rs.getString(2),
                                    rs.getInt(3),
                                    rs.getInt(4),
                                    rs.getFloat(5),
                                    rs.getDate(6),
                                    rs.getDate(7),
                                    rs.getString(8)
                                    ));
            }
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }
    public Product GetProductById(String product_id) {
        Product p= new Product();
        
        try {
            String sql = "select * from product where product_id=? ";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, product_id);
            ResultSet rs = statement.executeQuery();
            if (rs.next()) {
                p= new Product(rs.getInt(1),
                                    rs.getString(2),
                                    rs.getInt(3),
                                    rs.getInt(4),
                                    rs.getFloat(5),
                                    rs.getDate(6),
                                    rs.getDate(7),
                                    rs.getString(8)
                                    );
            }
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return p;
    }
    public ArrayList<Product> GetProductBySearch(String mess) {
        ArrayList<Product> list=new ArrayList<>();
        
        try {
            String sql = "select * from product where product_name like ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1,"%"+ mess + "%");
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                 list.add(new Product(rs.getInt(1),
                                    rs.getString(2),
                                    rs.getInt(3),
                                    rs.getInt(4),
                                    rs.getFloat(5),
                                    rs.getDate(6),
                                    rs.getDate(7),
                                    rs.getString(8)
                                    ));
            }
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }
    public void insertProduct(Product s) {
        try {
            String sql = "insert into Product(product_name,category_id,brand_id,price ,create_time,update_time,thumbnail )"
                    + "values(?,?,?,?,GETDATE(),GETDATE(),?)";
            PreparedStatement statement = connection.prepareStatement(sql);
            
            statement.setString(1, s.getProduct_name() );
            statement.setInt(2, s.getCategory_id());
            statement.setInt(3, s.getBrand_id());
            statement.setFloat(4, s.getPrice());
            statement.setString(5, s.getThumbnail());
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public void updateProduct(Product s) {
        try {
            String sql = "update Product set product_name=?,category_id=?,brand_id=?,update_time=GetDate(),price=?,thumbnail=? "
                    + "where product_id=?";
            PreparedStatement statement = connection.prepareStatement(sql);
            
            statement.setString(1, s.getProduct_name() );
            statement.setInt(2, s.getCategory_id());
            statement.setInt(3, s.getBrand_id());
            statement.setFloat(4, s.getPrice());
            statement.setString(5, s.getThumbnail());
            statement.setInt(6, s.getProduct_id());
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    public void deleteProduct(String p_id) {
        try {
            String sql = "delete from Product where product_id=?";
            PreparedStatement statement = connection.prepareStatement(sql);
            
            statement.setString(1, p_id );
            
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    public int TotalProduct() {
        
        try {
            String sql = "select count(*)  from [Product]";
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return 0;
    }
    public ArrayList<Product> GetProductByPaging(int index) {
        ArrayList<Product> list=new ArrayList<>();
        
        try {
            String sql = "select * from product order by product_id offset ? rows fetch next 9 rows only";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1,(index-1)*9);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                 list.add(new Product(rs.getInt(1),
                                    rs.getString(2),
                                    rs.getInt(3),
                                    rs.getInt(4),
                                    rs.getFloat(5),
                                    rs.getDate(6),
                                    rs.getDate(7),
                                    rs.getString(8)
                                    ));
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }
    
    
    public static void main(String[] args) {
        ProductDAO dao = new ProductDAO();
        ArrayList<Product> list= dao.GetProductByPaging(1);
       
        for(Product o: list){
            System.out.println(o);
        }
//        Product p = dao.GetProductById("4");
//        System.out.println(p);
//          System.out.println(dao.TotalProduct());  
    }
}
