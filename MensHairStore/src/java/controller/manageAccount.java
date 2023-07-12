/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import DAL.AccountDAO;
import DAL.ProductDAO;
import DAL.UserDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.ArrayList;
import model.Account;
import model.Product;
import model.User;

/**
 *
 * @author DELL
 */
public class manageAccount extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        Account ac = (Account) session.getAttribute("account");
        
        
        if (ac != null) {
            int role_id = ac.getRole_id();
            if (role_id == 1) {
                response.setContentType("text/html;charset=UTF-8");

                AccountDAO ad= new AccountDAO();
                 ArrayList<Account> acc= ad.getAllAccount();
                request.setAttribute("acc", acc);

                request.getRequestDispatcher("manageUser.jsp").forward(request, response);
            }else{
                response.sendRedirect("home");
            }
        }else{
            response.sendRedirect("login1.jsp");
        }
    }
    public static void main(String[] args) {
        AccountDAO ad= new AccountDAO();
//        Account ac = ad.getAccountByGmail("minhtri147963@gmail.com");
//        Account a = ad.getAccount("nguyentri16112003", "minhtri16112003");
//        System.out.println(ac);
//        System.out.println(a);
        ArrayList<Account> list= ad.getAllAccount();
       
        for(Account o: list){
            System.out.println(o);
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
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
     *
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
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
