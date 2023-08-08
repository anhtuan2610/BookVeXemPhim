/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author trana
 */
public class SeatRoom {

    private String seatId, seatName, seatStatus, RoomId, UserId;
    private Movie movie;

    public SeatRoom() {
    }

    public SeatRoom(String seatId, String seatName, String seatStatus) {
        this.seatId = seatId;
        this.seatName = seatName;
        this.seatStatus = seatStatus;
    }

    public SeatRoom(String seatName, String seatStatus, String RoomId, String UserId, Movie movie) {
        this.seatName = seatName;
        this.seatStatus = seatStatus;
        this.RoomId = RoomId;
        this.UserId = UserId;
        this.movie = movie;
    }
    
    public SeatRoom(String seatId, String seatName, String seatStatus, String RoomId, String UserId) {
        this.seatId = seatId;
        this.seatName = seatName;
        this.seatStatus = seatStatus;
        this.RoomId = RoomId;
        this.UserId = UserId;
    }

    public SeatRoom(String seatId, String seatName, String seatStatus, String RoomId, String UserId, Movie movie) {
        this.seatId = seatId;
        this.seatName = seatName;
        this.seatStatus = seatStatus;
        this.RoomId = RoomId;
        this.UserId = UserId;
        this.movie = movie;
    }


    public String getSeatId() {
        return seatId;
    }

    public void setSeatId(String seatId) {
        this.seatId = seatId;
    }

    public String getSeatName() {
        return seatName;
    }

    public void setSeatName(String seatName) {
        this.seatName = seatName;
    }

    public String getSeatStatus() {
        return seatStatus;
    }

    public void setSeatStatus(String seatStatus) {
        this.seatStatus = seatStatus;
    }

    public String getRoomId() {
        return RoomId;
    }

    public void setRoomId(String RoomId) {
        this.RoomId = RoomId;
    }

    public String getUserId() {
        return UserId;
    }

    public void setUserId(String UserId) {
        this.UserId = UserId;
    }

    public Movie getMovie() {
        return movie;
    }

    public void setMovie(Movie movie) {
        this.movie = movie;
    }
    
    

}
