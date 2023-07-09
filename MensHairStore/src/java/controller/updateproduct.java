/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller;

import DAL.ProductDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Product;

/**
 *
 * @author DELL
 */
public class updateproduct extends HttpServlet {
   
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
        String p_id=request.getParameter("p_id");
        ProductDAO pd=new ProductDAO();
        Product p = pd.GetProductById(p_id);
        request.setAttribute("detail", p);
        request.getRequestDispatcher("updateproduct.jsp").forward(request, response);
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
        int p_id= Integer.parseInt(request.getParameter("product_id"));
        String product_name= request.getParameter("product_name");
        int category_id= Integer.parseInt(request.getParameter("category_id"));
        int brand_id= Integer.parseInt(request.getParameter("brand_id"));
        float price= Float.parseFloat(request.getParameter("price"));
        String thumbnail= request.getParameter("thumbnail");
        
        Product p= new Product();
        p.setProduct_id(p_id);
        p.setProduct_name(product_name);
        p.setCategory_id(category_id);
        p.setBrand_id(brand_id);
        p.setPrice(price);
        p.setThumbnail(thumbnail);
        ProductDAO pd=new ProductDAO();
        pd.updateProduct(p);
        response.sendRedirect("manageProduct");
        
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
