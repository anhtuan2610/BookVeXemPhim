/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author trana
 */
public class Room {
    private String RoomId, MovieId;

    public Room() {
    }

    public Room(String RoomId, String MovieId) {
        this.RoomId = RoomId;
        this.MovieId = MovieId;
    }

    public String getRoomId() {
        return RoomId;
    }

    public void setRoomId(String RoomId) {
        this.RoomId = RoomId;
    }

    public String getMovieId() {
        return MovieId;
    }

    public void setMovieId(String MovieId) {
        this.MovieId = MovieId;
    }
    
    
}
