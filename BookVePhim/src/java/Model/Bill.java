/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author trana
 */
public class Bill {

    private String UserName, MovieName, AllSeat;
    private double MoviePrice, Sum;
    private int BillId, CountTicket, RoomId;

    public Bill() {
    }

    
    public Bill(String UserName, String MovieName, int RoomId, String AllSeat, double MoviePrice, int CountTicket, double Sum) {
        this.UserName = UserName;
        this.MovieName = MovieName;
        this.RoomId = RoomId;
        this.AllSeat = AllSeat;
        this.MoviePrice = MoviePrice;
        this.Sum = Sum;
        this.CountTicket = CountTicket;
    }

    public Bill(int BillId, String UserName, String MovieName, int RoomId, String AllSeat, double MoviePrice, int CountTicket, double Sum) {
        this.UserName = UserName;
        this.MovieName = MovieName;
        this.AllSeat = AllSeat;
        this.MoviePrice = MoviePrice;
        this.Sum = Sum;
        this.BillId = BillId;
        this.CountTicket = CountTicket;
        this.RoomId = RoomId;
    }
    
    

    public String getUserName() {
        return UserName;
    }

    public void setUserName(String UserName) {
        this.UserName = UserName;
    }

    public String getMovieName() {
        return MovieName;
    }

    public void setMovieName(String MovieName) {
        this.MovieName = MovieName;
    }

    public int getRoomId() {
        return RoomId;
    }

    public void setRoomId(int RoomId) {
        this.RoomId = RoomId;
    }

    public String getAllSeat() {
        return AllSeat;
    }

    public void setAllSeat(String AllSeat) {
        this.AllSeat = AllSeat;
    }

    public double getMoviePrice() {
        return MoviePrice;
    }

    public void setMoviePrice(double MoviePrice) {
        this.MoviePrice = MoviePrice;
    }

    public double getSum() {
        return Sum;
    }

    public void setSum(double Sum) {
        this.Sum = Sum;
    }

    public int getCountTicket() {
        return CountTicket;
    }

    public void setCountTicket(int CountTicket) {
        this.CountTicket = CountTicket;
    }

    public int getBillId() {
        return BillId;
    }

    public void setBillId(int BillId) {
        this.BillId = BillId;
    }



    
}
