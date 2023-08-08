/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author trana
 */
public class Movie {

    private String MovieId, MovieName, MovieImg, MovieTime, MovieDescribe, RoomId;
    private double MoviePrice;

    public Movie() {
    }

    public Movie(String MovieName, String MovieImg, String MovieTime) {
        this.MovieName = MovieName;
        this.MovieImg = MovieImg;
        this.MovieTime = MovieTime;
    }

    public Movie(String MovieId, String MovieName, String MovieImg, String MovieTime) {
        this.MovieId = MovieId;
        this.MovieName = MovieName;
        this.MovieImg = MovieImg;
        this.MovieTime = MovieTime;
    }

    public Movie(String MovieId, String MovieName, String MovieImg, String MovieTime, String MovieDescribe) {
        this.MovieId = MovieId;
        this.MovieName = MovieName;
        this.MovieImg = MovieImg;
        this.MovieTime = MovieTime;
        this.MovieDescribe = MovieDescribe;
    }

    public Movie(String MovieId, String MovieName, String MovieImg, String MovieTime, String MovieDescribe, String RoomId) {
        this.MovieId = MovieId;
        this.MovieName = MovieName;
        this.MovieImg = MovieImg;
        this.MovieTime = MovieTime;
        this.MovieDescribe = MovieDescribe;
        this.RoomId = RoomId;
    }

    public Movie(String MovieId, String MovieName, String MovieImg, String MovieTime, String MovieDescribe, double MoviePrice) {
        this.MovieId = MovieId;
        this.MovieName = MovieName;
        this.MovieImg = MovieImg;
        this.MovieTime = MovieTime;
        this.MovieDescribe = MovieDescribe;
        this.MoviePrice = MoviePrice;
    }

    public Movie(String MovieId, String MovieName, String MovieImg, String MovieTime, String MovieDescribe, String RoomId, double MoviePrice) {
        this.MovieId = MovieId;
        this.MovieName = MovieName;
        this.MovieImg = MovieImg;
        this.MovieTime = MovieTime;
        this.MovieDescribe = MovieDescribe;
        this.RoomId = RoomId;
        this.MoviePrice = MoviePrice;
    }

    public String getMovieId() {
        return MovieId;
    }

    public void setMovieId(String MovieId) {
        this.MovieId = MovieId;
    }

    public String getMovieName() {
        return MovieName;
    }

    public void setMovieName(String MovieName) {
        this.MovieName = MovieName;
    }

    public String getMovieImg() {
        return MovieImg;
    }

    public void setMovieImg(String MovieImg) {
        this.MovieImg = MovieImg;
    }

    public String getMovieTime() {
        return MovieTime;
    }

    public void setMovieTime(String MovieTime) {
        this.MovieTime = MovieTime;
    }

    public String getMovieDescribe() {
        return MovieDescribe;
    }

    public void setMovieDescribe(String MovieDescribe) {
        this.MovieDescribe = MovieDescribe;
    }

    public String getRoomId() {
        return RoomId;
    }

    public void setRoomId(String RoomId) {
        this.RoomId = RoomId;
    }

    public double getMoviePrice() {
        return MoviePrice;
    }

    public void setMoviePrice(double MoviePrice) {
        this.MoviePrice = MoviePrice;
    }

}
