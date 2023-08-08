/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author trana
 */
public class User {

    private String UserId, UserName, UserPassword, Name, AdminCheck;
    private double Balance;

    public User() {
    }

    public User(String UserId, String UserName, String UserPassword, String Name, double Balance) {
        this.UserId = UserId;
        this.UserName = UserName;
        this.UserPassword = UserPassword;
        this.Name = Name;
        this.Balance = Balance;
    }

    public User(String UserId, String UserName, String UserPassword, String Name, double Balance, String AdminCheck) {
        this.UserId = UserId;
        this.UserName = UserName;
        this.UserPassword = UserPassword;
        this.Name = Name;
        this.AdminCheck = AdminCheck;
        this.Balance = Balance;
    }

    public String getUserId() {
        return UserId;
    }

    public void setUserId(String UserId) {
        this.UserId = UserId;
    }

    public String getUserName() {
        return UserName;
    }

    public void setUserName(String UserName) {
        this.UserName = UserName;
    }

    public String getUserPassword() {
        return UserPassword;
    }

    public void setUserPassword(String UserPassword) {
        this.UserPassword = UserPassword;
    }

    public String getName() {
        return Name;
    }

    public void setName(String Name) {
        this.Name = Name;
    }

    public double getBalance() {
        return Balance;
    }

    public void setBalance(double Balance) {
        this.Balance = Balance;
    }

    public String getAdminCheck() {
        return AdminCheck;
    }

    public void setAdminCheck(String AdminCheck) {
        this.AdminCheck = AdminCheck;
    }

    
    
}
