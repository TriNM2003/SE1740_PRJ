/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import DAL.OrderDAO;
import DAL.OrderDetailDAO;
import DAL.ProductDAO;
import DAL.UserDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.net.HttpCookie;
import java.util.ArrayList;
import model.Account;
import model.Cart;
import model.Item;
import model.Order;
import model.OrderDetails;
import model.Product;
import model.User;

/**
 *
 * @author DELL
 */
public class checkoutControll extends HttpServlet {

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
        response.setContentType("text/html;charset=UTF-8");
        HttpSession session = request.getSession();
        Account acc = (Account) session.getAttribute("account");
        ProductDAO pd = new ProductDAO();
        String user_id = "";
        if (acc != null) {
            Cookie[] arr = request.getCookies();
            if (arr != null) {
                String txt = "";
                for (Cookie o : arr) {
                    if (o.getName().equals("cart" + user_id)) {
                        txt += o.getValue();
                    }
                }
                ArrayList<Product> list = pd.AllProduct();

                Cart cart = new Cart(txt, list);
                ArrayList<Item> items = cart.getItems();
                
                    request.setAttribute("cart", cart);
                    int u_id = (Integer) session.getAttribute("id");
                    UserDAO ud = new UserDAO();
                    User us = ud.GetUserById(u_id);
                    if (us.getFullname() != null) {
                        request.setAttribute("us", us);

                        user_id = Integer.toString(acc.getUser_id());

                        request.getRequestDispatcher("checkout.jsp").forward(request, response);
                    } else {
                        request.getRequestDispatcher("profile").forward(request, response);
                    }
                
            }
        } else {
            request.getRequestDispatcher("login1.jsp").forward(request, response);
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
        HttpSession session = request.getSession();
        Account acc = (Account) session.getAttribute("account");
        int user_id = acc.getUser_id();
        OrderDAO od = new OrderDAO();
        String fullname = request.getParameter("fullname");
        String address = request.getParameter("address");
        String note = request.getParameter("note");
        String gmail = request.getParameter("gmail");
        String phone_number = request.getParameter("phone_number");
        Float total = Float.parseFloat(request.getParameter("total"));
        Order o = new Order();
        o.setUser_id(user_id);
        o.setFullname(fullname);
        o.setAddress(address);
        o.setNote(note);
        o.setGmail(gmail);
        o.setStatus(1);
        o.setPhone_number(phone_number);
        o.setTotal_money(total);
        od.insertOrder(o);

        ProductDAO dp = new ProductDAO();
        ArrayList<Product> list = dp.AllProduct();

        String u_id = "";

        u_id = Integer.toString(acc.getUser_id());

        Cookie[] arr = request.getCookies();
        String txt = "";
        if (arr != null) {
            for (Cookie cookie : arr) {
                if (cookie.getName().equals("cart" + u_id)) {
                    txt += cookie.getValue();
                    cookie.setMaxAge(0);
                    response.addCookie(cookie);
                }
            }
        }
        Cart cart = new Cart(txt, list);
        ArrayList<Item> listItem = cart.getItems();
        OrderDetails ode = new OrderDetails();
        OrderDetailDAO odd = new OrderDetailDAO();
        Order od1 = od.GetOrderById(Integer.toString(user_id));
        int o_id = od1.getOrder_id();
        for (Item l : listItem) {
            float sub = l.getProduct().getPrice() * l.getQuantity() * (1 - l.getProduct().getDiscount() / 100);
            ode.setOrder_id(o_id);
            ode.setProduct_id(l.getProduct().getProduct_id());
            ode.setPrice(l.getPrice());
            ode.setQuantity(l.getQuantity());
            ode.setSubtotal(sub);
            odd.insertOrderDetails(ode);
        }

        response.sendRedirect("orderComplete.jsp");

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
