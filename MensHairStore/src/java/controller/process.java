/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller;

import DAL.ProductDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.ArrayList;
import model.Account;
import model.Cart;
import model.Item;
import model.Product;

/**
 *
 * @author DELL
 */
public class process extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        ProductDAO pd= new ProductDAO();
        ArrayList<Product>  list= pd.AllProduct();
        HttpSession session = request.getSession();
        Account acc =(Account) session.getAttribute("account");
        String user_id="";
        if(acc !=null){
            user_id= Integer.toString(acc.getUser_id());
        }
        Cookie[] arr=request.getCookies();
        String txt="";
        if(arr!= null){
            for(Cookie o: arr){
                if(o.getName().equals("cart"+user_id)){
                        txt+=o.getValue();
                        o.setMaxAge(0); 
                        response.addCookie(o);
                }
            }
        }
        
        
        Cart cart = new Cart(txt,list);
        String num_raw=request.getParameter("num");
        String id_raw=request.getParameter("p_id");
        int p_id;
        int num=0;
        try {
                p_id = Integer.parseInt(id_raw);
                Product product = pd.GetProductById(id_raw);
                num = Integer.parseInt(num_raw);
                if ((num == -1) && (cart.getQuantityById(p_id) <= 1)) {
                    cart.removeItem(p_id);
                }else{
                    float price = product.getPrice();
                    Item item = new Item(product, num, price);
                    cart.addItem(item);
                }
            } catch (Exception e) {
            }

            ArrayList<Item> items = cart.getItems();
            // cart inf are now in cart so reset text and write cart to text and save in cookie
            txt = "";
            if(items.size() > 0){
                txt = items.get(0).getProduct().getProduct_id() + ":" + items.get(0).getQuantity();
                for (int i = 1; i < items.size(); i++) {
                    txt += "-" + items.get(i).getProduct().getProduct_id() + ":" + items.get(i).getQuantity();
                }
            }
            Cookie c = new Cookie("cart" + user_id, txt);
            c.setMaxAge(30*24*60*60);
            response.addCookie(c);
            request.setAttribute("cart", cart);
        
        request.getRequestDispatcher("cart.jsp").forward(request, response);
        
        
             
    } 
    public static void main(String[] args) {
        ProductDAO pd= new ProductDAO();
        ArrayList<Product>  list= pd.AllProduct();
        for(Product o:list){
            System.out.println(o);
        }
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
