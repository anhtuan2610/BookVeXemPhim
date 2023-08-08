/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import Dal.RoomDAO;
import Model.Bill;
import Model.SeatRoom;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.ArrayList;

/**
 *
 * @author trana
 */
public class InfoTicket extends HttpServlet {

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
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet InfoTicket</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet InfoTicket at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
        if (request.getParameterValues("seat") == null) {
            response.sendRedirect("home");
        } else {
            String balance = request.getParameter("balance");
            double Balance = Double.parseDouble(balance);
            String UserName = (String) session.getAttribute("username");
            String MovieName = request.getParameter("moviename");
            int RoomId = Integer.parseInt(request.getParameter("roomid"));
            String[] Seat = request.getParameterValues("seat");
            String AllSeat = "";
            for (int i = 0; i < Seat.length; i++) {
                AllSeat += Seat[i] + " ";
            }
            double MoviePrice = Double.parseDouble(request.getParameter("movieprice"));
            int CountTicket = Seat.length;
            double Sum = CountTicket * MoviePrice;
//        System.out.println("UserName: " + UserName);
//        System.out.println("MovieName: " + MovieName);
//        System.out.println("RoomId: " + RoomId);
//        System.out.println("AllSeat: " + AllSeat);
//        System.out.println("MoviePrice: " + MoviePrice);
//        System.out.println("CountTicket: " + CountTicket);
//        System.out.println("Sum: " + Sum);
            Bill bill = new Bill(UserName, MovieName, RoomId, AllSeat, MoviePrice, CountTicket, Sum);
            request.setAttribute("data", bill);
            request.getRequestDispatcher("InfoTicket.jsp").forward(request, response);
        }
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
