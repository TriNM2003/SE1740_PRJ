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
import model.Info;
import model.Info;

/**
 *
 * @author DELL
 */
public class InfoDAO extends BaseDAO{
    public Info GetInfo (String info_id) {
        Info p= new Info();
        
        try {
            String sql = "select * from info where info_id=? ";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, info_id);
            ResultSet rs = statement.executeQuery();
            if (rs.next()) {
                p= new Info(rs.getInt(1),
                                    rs.getInt(2),
                                    rs.getString(3),
                                    rs.getString(4),
                                    rs.getString(5),
                                    rs.getString(6)
                                    );
            }
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return p;
    }
    public static void main(String[] args) {
        InfoDAO dao = new InfoDAO();
//        ArrayList<Info> list= dao.getInfo("1");
//        
//        for(Info o: list){
//            System.out.println(o);
//        }
        Info p = dao.GetInfo("1");
        System.out.println(p);
    }
}
