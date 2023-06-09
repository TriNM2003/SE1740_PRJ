/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import DAL.AccountDAO;
import DAL.UserDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.Account;
import model.User;

/**
 *
 * @author DELL
 */
public class profile extends HttpServlet {

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
        Account acc = (Account) session.getAttribute("account");
        String user_id = "";
        if (acc != null) {

            int u_id = (Integer) session.getAttribute("id");
            UserDAO ud = new UserDAO();
            User us = ud.GetUserById(u_id);
            request.setAttribute("us", us);
            request.getRequestDispatcher("profile.jsp").forward(request, response);
        } else {
            request.getRequestDispatcher("login1.jsp").forward(request, response);
        }

    }

    public static void main(String[] args) {
        int u_id = Integer.parseInt("2");
        UserDAO ud = new UserDAO();
        User us = ud.GetUserById(u_id);
        System.out.println(us);
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
        response.setContentType("text/html;charset=UTF-8");
        String fullname = request.getParameter("fullname");
        String address = request.getParameter("address");
        String phone_number = request.getParameter("phone_number");
        HttpSession session = request.getSession();
        int id = (Integer) session.getAttribute("id");

        UserDAO ud = new UserDAO();
        User us = new User();
        us.setUser_id(id);
        us.setFullname(fullname);
        us.setAddress(address);
        us.setPhone_number(phone_number);
        ud.insertUser(us);
        request.setAttribute("mess", "Cập nhật thông tin thành công!");
        request.getRequestDispatcher("profile.jsp").forward(request, response);

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
