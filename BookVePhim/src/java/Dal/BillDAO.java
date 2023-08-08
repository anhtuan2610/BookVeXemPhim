/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Dal;

import Model.Bill;
import Model.DBContext;
import Model.Movie;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 *
 * @author trana
 */
public class BillDAO extends DBContext {

    public ArrayList<Bill> getBillByUserName(String userName) {
        ArrayList<Bill> list = new ArrayList<Bill>();
        try {
            String strSelect = "select * from Bill WHERE UserName = ?";
            PreparedStatement ps = connection.prepareStatement(strSelect);
            ps.setString(1, userName);
            ResultSet rs;
            rs = ps.executeQuery();
            while (rs.next()) {
                int BillId = rs.getInt(1);
                String UserName = rs.getString(2);
                String MovieName = rs.getString(3);
                int RoomId = rs.getInt(4);
                String AllSeat = rs.getString(5);
                double MoviePrice = rs.getDouble(6);
                int CountTicket = rs.getInt(7);
                double Sum = rs.getDouble(8);
                list.add(new Bill(BillId, UserName, MovieName, RoomId, AllSeat, MoviePrice, CountTicket, Sum));
            }
        } catch (Exception e) {
            System.out.println("getListMovie: " + e.getMessage());
        }
        return list;
    }

    public void addBill(String userName, String movieName, int roomId, String seat, double moviePrice, int countTicket, double sum) {
        try {
            String strSelect = "INSERT INTO Bill\n"
                    + "    (UserName, MovieName, RoomId, Seat, MoviePrice, CountTicket, SumPrice)\n"
                    + "VALUES\n"
                    + "    (? , ? , ? , ? , ? , ? , ?);";
            PreparedStatement ps = connection.prepareStatement(strSelect);
            ps.setString(1, userName);
            ps.setString(2, movieName);
            ps.setInt(3, roomId);
            ps.setString(4, seat);
            ps.setDouble(5, moviePrice);
            ps.setInt(6, countTicket);
            ps.setDouble(7, sum);
            ps.execute(); // dung` khi ko get den cai gi
        } catch (Exception e) {
            System.out.println("AddUser: " + e.getMessage());
        }
    }
}
