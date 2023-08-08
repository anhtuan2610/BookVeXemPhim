/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Dal;

import Model.DBContext;
import Model.Movie;
import Model.SeatRoom;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author trana
 */
public class RoomDAO extends DBContext {

    public void updateSeatStatus(String[] seatName, int userId, int roomId) {
        try {
            for (int i = 0; i < seatName.length; i++) {
                String strSelect = "UPDATE SeatRoom SET seatStatus = 'Sold', UserId = ?  WHERE seatName = ? AND RoomId = ?";
                PreparedStatement ps = connection.prepareStatement(strSelect);
                ps.setInt(1, userId);
                ps.setString(2, seatName[i]);
                ps.setInt(3, roomId);
                ps.execute(); // su dung khi ko su dung. den resault
            }
        } catch (Exception e) {
            System.out.println("updateSeatStatus: " + e.getMessage());
        }
    }

    public ArrayList<SeatRoom> getSeatStatusByMovieId(String id) {
        ArrayList<SeatRoom> list = new ArrayList<>();
        try {
            String sql = "SELECT m.MovieId, m.MovieName, m.MovieImg, m.MovieTime, m.Describe, m.RoomId, m.MoviePrice \n"
                    + ", s.seatName, s.seatStatus, s.RoomId, UserId\n"
                    + "FROM MovieShowing m , SeatRoom s\n"
                    + "WHERE MovieId = ? AND m.RoomId = s.RoomId";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Movie movie = new Movie(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), Double.parseDouble(rs.getString(7)));
                SeatRoom r = new SeatRoom(rs.getString(8), rs.getString(9), rs.getString(10), rs.getString(11), movie);
                list.add(r);
            }
            return list;
        } catch (SQLException e) {
            System.out.println("getSeatStatusByMovieId : " + e.getMessage());
        }
        return null;
    }
}
