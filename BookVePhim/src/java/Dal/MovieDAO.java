/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Dal;

import Model.DBContext;
import Model.Movie;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author trana
 */
public class MovieDAO extends DBContext {

    public ArrayList<Movie> getListMovieU() { //
        ArrayList<Movie> list = new ArrayList<Movie>();
        try {
            String strSelect = "select * from MovieUpcoming";
            PreparedStatement ps = connection.prepareStatement(strSelect);
            ResultSet rs;
            rs = ps.executeQuery();
            while (rs.next()) {
                String MovieId = rs.getString(1);
                String MovieName = rs.getString(2);
                String MovieImg = rs.getString(3);
                String MovieTime = rs.getString(4);
                String MovieDescribe = rs.getString(5);
                list.add(new Movie(MovieId, MovieName, MovieImg, MovieTime, MovieDescribe));
            }
        } catch (Exception e) {
            System.out.println("getListMovie: " + e.getMessage());
        }
        return list;
    }

    public ArrayList<Movie> getMovieUByMovieId(String id) { //
        ArrayList<Movie> list = new ArrayList<Movie>();
        try {
            String strSelect = "select * from MovieUpcoming\n"
                    + "where MovieId = ?";
            PreparedStatement ps = connection.prepareStatement(strSelect);
            ps.setString(1, id);
            ResultSet rs;
            rs = ps.executeQuery();
            while (rs.next()) {
                String MovieId = rs.getString(1);
                String MovieName = rs.getString(2);
                String MovieImg = rs.getString(3);
                String MovieTime = rs.getString(4);
                String MovieDescribe = rs.getString(5);
                list.add(new Movie(MovieId, MovieName, MovieImg, MovieTime, MovieDescribe));
            }
        } catch (Exception e) {
            System.out.println("getListMovie: " + e.getMessage());
        }
        return list;
    }

    public ArrayList<Movie> getListMovieS() { //
        ArrayList<Movie> list = new ArrayList<Movie>();
        try {
            String strSelect = "select * from MovieShowing";
            PreparedStatement ps = connection.prepareStatement(strSelect);
            ResultSet rs;
            rs = ps.executeQuery();
            while (rs.next()) {
                String MovieId = rs.getString(1);
                String MovieName = rs.getString(2);
                String MovieImg = rs.getString(3);
                String MovieTime = rs.getString(4);
                String MovieDescribe = rs.getString(5);
                String RoomId = rs.getString(6);
                list.add(new Movie(MovieId, MovieName, MovieImg, MovieTime, MovieDescribe, RoomId));
            }
        } catch (Exception e) {
            System.out.println("getListMovie: " + e.getMessage());
        }
        return list;
    }

    public ArrayList<Movie> getMovieSByMovieId(String id) { //
        ArrayList<Movie> list = new ArrayList<Movie>();
        try {
            String strSelect = "select * from MovieShowing\n"
                    + "where MovieId = ?";
            PreparedStatement ps = connection.prepareStatement(strSelect);
            ps.setString(1, id);
            ResultSet rs;
            rs = ps.executeQuery();
            while (rs.next()) {
                String MovieId = rs.getString(1);
                String MovieName = rs.getString(2);
                String MovieImg = rs.getString(3);
                String MovieTime = rs.getString(4);
                String MovieDescribe = rs.getString(5);
                String RoomId = rs.getString(6);
                list.add(new Movie(MovieId, MovieName, MovieImg, MovieTime, MovieDescribe, RoomId));
            }
        } catch (Exception e) {
            System.out.println("getListMovie: " + e.getMessage());
        }
        return list;
    }

    public void AddMovie(String name, String movieimg, String movietime, String describe) {
        try {
            String strSelect = "INSERT INTO MovieUpcoming(MovieName, MovieImg, MovieTime, Describe)\n"
                    + "VALUES ( ? , ? , ? , ? )";
            PreparedStatement ps = connection.prepareStatement(strSelect);
            ps.setString(1, name);
            ps.setString(2, movieimg);
            ps.setString(3, movietime);
            ps.setString(4, describe);
            ps.execute();
        } catch (Exception e) {
            System.out.println("AddMovie: " + e.getMessage());
        }
    }

    public void RemoveMovieById(String id) {
        try {
            String strSelect = "DELETE FROM MovieUpcoming\n"
                    + "Where MovieId = ? ";
            PreparedStatement ps = connection.prepareStatement(strSelect);
            ps.setString(1, id);
            ps.execute();
        } catch (Exception e) {
            System.out.println("RemoveMovie: " + e.getMessage());
        }
    }

    public boolean checkSaetMovie(int RoomId) {
        try {
            String strSelect = "SELECT seatStatus FROM SeatRoom\n" +
"WHERE RoomId = ? AND seatStatus = 'Sold' ";
            int count = 0;
            PreparedStatement ps = connection.prepareStatement(strSelect);
            ps.setInt(1, RoomId);
            ResultSet rs;
            rs = ps.executeQuery();
            while (rs.next()) {
                count++;
            }
            if(count == 32){
                return true;
            }
        } catch (Exception e) {
            System.out.println("checkSaetMovie: " + e.getMessage());
        }
        return false;
    }
}
