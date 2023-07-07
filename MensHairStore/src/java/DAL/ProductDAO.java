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
            String sql = "select TOP 4 * from product order by create_time desc";
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
            String sql = "select TOP 8 * from product";
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
    
    
    public static void main(String[] args) {
        ProductDAO dao = new ProductDAO();
        ArrayList<Product> list= dao.AllProduct();
        for(Product o: list){
            System.out.println(o);
        }
    }
}
