/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller;

import DAL.CategoryDAO;
import DAL.ProductDAO;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;
import model.Account;
import model.Cart;
import model.Category;
import model.Item;
import model.Product;


/**
 *
 * @author DELL
 */
public class shop extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        ProductDAO pd = new ProductDAO();
        int all=pd.TotalProduct();
        int endPage = all/9;
        if(all%9 != 0  ){
            endPage++;
        }
        request.setAttribute("endPage", endPage);
        
        
        String index= request.getParameter("index");
        if(index == null){
            
            ArrayList<Product> pro= pd.GetProductByPaging(1);
            request.setAttribute("product",pro);
            request.setAttribute("index",1);
        }else{
            ArrayList<Product> pro= pd.GetProductByPaging(Integer.parseInt(index));
            request.setAttribute("product",pro);
            request.setAttribute("index",index);
        }
        HttpSession session = request.getSession();
        Account acc =(Account) session.getAttribute("account");
        CategoryDAO cd= new CategoryDAO();
        if(acc != null){
            String user_id= Integer.toString(acc.getUser_id());
        }
        Cookie[] arr=request.getCookies();
        
        String txt="";
        if(arr!= null){
            for(Cookie o: arr){
                if(o.getName().equals("cart")){
                        txt+=o.getValue();
                }
            }
        }
        ArrayList<Product> list = pd.AllProduct();
        
        Cart cart = new Cart(txt,list);
        int n;
        ArrayList<Item> listItem = cart.getItems();
        if(listItem != null){
            n= listItem.size();
        }else{
            n=0;
        }
        request.setAttribute("size", n);
        
        ArrayList<Category> cate= cd.getCategory();
        request.setAttribute("cate",cate);
        
        
        

        
        request.getRequestDispatcher("shop.jsp").forward(request, response);
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
    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    } 

    /** 
     * Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    }

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
