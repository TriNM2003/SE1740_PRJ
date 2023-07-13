/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 *
 * @author DELL
 */
public class nhap extends HttpServlet {
   
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
        HttpSession session = request.getSession();
        Account a = (Account) session.getAttribute("acc");
        if (a != null){
            String account_id = Integer.toString(a.getAccount_id());
            DAO dao = new DAO();
            List<Product> allProduct = dao.getProduct();
    // Cart (on going )     
        // Set up cookie
            // get cookie from pc
            Cookie[] array = request.getCookies();
            // cookie(txt)
            // seperate by "-" each item |id: quantity|,|id: quantity|, ...
            String text = "";
            if (array != null){
                for(Cookie cookie: array){

                    if(cookie.getName().equals("cart" + account_id)){
                        text += cookie.getValue();
                        cookie.setMaxAge(0); 
                        response.addCookie(cookie);
                    }
                }
            }
            // get txt and cr cart
            Cart cart = new Cart(text, allProduct);

            String num =request.getParameter("num");
            String pid = request.getParameter("id");

            int product_id, num_raw = 0;
            try {
                product_id = Integer.parseInt(pid);
                Product product = dao.getProductByID(pid);
                num_raw = Integer.parseInt(num);
                if ((num_raw == -1) && (cart.getQuantityByID(product_id) <= 1)) {
                    cart.removeItem(product_id);
                }else{
                    double price = (product.getPrice() * product.getDiscount());
                    Item item = new Item(product, num_raw, price);
                    cart.addItem(item);
                }
            } catch (Exception e) {
            }

            List<Item> items = cart.getItems();
            // cart inf are now in cart so reset text and write cart to text and save in cookie
            text = "";
            if(items.size() > 0){
                text = items.get(0).getProduct().getProduct_id() + ":" + items.get(0).getItem_quantity();
                for (int i = 1; i < items.size(); i++) {
                    text += "-" + items.get(i).getProduct().getProduct_id() + ":" + items.get(i).getItem_quantity();
                }
            }
            Cookie c = new Cookie("cart" + account_id, text);
            c.setMaxAge(2*24*60*60);
            response.addCookie(c);
            request.setAttribute("cart", cart);
            request.getRequestDispatcher("MyCart.jsp").forward(request, response);
        }else{
            response.sendRedirect("Login.jsp");
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
