/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import Dal.BillDAO;
import Dal.RoomDAO;
import Dal.UserDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 *
 * @author trana
 */
public class SuccessTicket extends HttpServlet {

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
            out.println("<title>Servlet SuccessTicket</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet SuccessTicket at " + request.getContextPath() + "</h1>");
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
        RoomDAO r = new RoomDAO();
        UserDAO u = new UserDAO();
        BillDAO b = new BillDAO();
        String userName = request.getParameter("username");
        String movieName = request.getParameter("moviename");
        int roomId = Integer.parseInt(request.getParameter("roomid"));
        String seat = request.getParameter("seat");
        String[] seatName = seat.split(" ");
        double moviePrice = Double.parseDouble(request.getParameter("movieprice"));
        int countTicket = Integer.parseInt(request.getParameter("countticket"));
        double sum = Double.parseDouble(request.getParameter("sum"));
        
        int userId = Integer.parseInt(request.getParameter("userid"));
        double balance = Double.parseDouble(request.getParameter("balance"));
        double updateBalance = balance - sum;

//        System.out.println("SuccessTicket: " + updateBalance);
//        System.out.println("sum" + sum);
        if (balance < sum) {
            request.setAttribute("error1", "Tài khoản không đủ để thực hiện thanh toán");
            request.getRequestDispatcher("BuySuccess.jsp").forward(request, response);
        } else if (seatName != null) {
            // Chi them bill vao database sau khi thanh toan thanh cong
            r.updateSeatStatus(seatName, userId, roomId);
            u.updateBalance(updateBalance, userName);
            b.addBill(userName, movieName, roomId, seat, moviePrice, countTicket, sum);
            
            HttpSession session = request.getSession();
            session.setAttribute("balance", updateBalance);
            request.setAttribute("success1", "Mua thành công !!!!!!!!");
            request.setAttribute("success2", "Cảm ơn bạn đã tin tưởng và sử dụng tgv");
            request.getRequestDispatcher("Login.jsp").forward(request, response);
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
