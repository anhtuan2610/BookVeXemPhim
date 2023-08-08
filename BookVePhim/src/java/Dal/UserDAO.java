/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Dal;

import Model.DBContext;
import Model.User;
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
public class UserDAO extends DBContext {

    public User checkUser(String account, String password) { //
        try {
            String strSelect = "select * from Users where UserName = ? AND UserPassword = ?";
            PreparedStatement ps = connection.prepareStatement(strSelect);
            ps.setString(1, account);
            ps.setString(2, password);
            ResultSet rs;
            rs = ps.executeQuery();
            while (rs.next()) {
                String UserId = rs.getString(1);
                String UserName = rs.getString(2);
                String UserPassword = rs.getString(3);
                String Name = rs.getString(4);
                double Balance = Double.parseDouble(rs.getString(5));
                String AdminCheck = rs.getString(6);
                User user = new User(UserId, UserName, UserPassword, Name, Balance, AdminCheck);
                return user;
            }
        } catch (Exception e) {
            System.out.println("checkUser: " + e.getMessage());
        }
        return null;
    }

    public boolean checkUserNameValid(String account) {
        try {
            String strSelect = "select * from Users WHERE UserName = ?";
            PreparedStatement ps = connection.prepareStatement(strSelect);
            ps.setString(1, account);
            ResultSet rs;
            rs = ps.executeQuery(); // dung khi can` get len cai j
            while (rs.next()) { // co tai khoan ton tai
                return true;
            }
        } catch (Exception e) {
            System.out.println("checkUserNameVaild: " + e.getMessage());
        }
        return false;
    }

    public void AddUser(String account, String password, String name) {
        try {
            String strSelect = "INSERT INTO Users (UserName, UserPassword, Name, UsersBalance, AdminCheck)\n"
                    + "VALUES (? , ? , ? , ? , ?)";
            PreparedStatement ps = connection.prepareStatement(strSelect);
            ps.setString(1, account);
            ps.setString(2, password);
            ps.setString(3, name);
            ps.setDouble(4, 50000);
            ps.setString(5, "0");
            ps.execute(); // dung` khi ko get den cai gi
        } catch (Exception e) {
            System.out.println("AddUser: " + e.getMessage());
        }
    }

    public void updateBalance(double updateBalance, String account) {
        try {
            String strSelect = "UPDATE Users SET UsersBalance = ? WHERE UserName = ? ";
            PreparedStatement ps = connection.prepareStatement(strSelect);
            ps.setDouble(1, updateBalance);
            ps.setString(2, account);
            ps.execute();
        } catch (Exception e) {
            System.out.println("updateBalance: " + e.getMessage());
        }
    }

    public void moreBalance(String UserName, double Balance) {
        try {
            String strSelect = "Update Users \n"
                    + "Set UsersBalance += ? WHERE UserName = ? ";
            PreparedStatement ps = connection.prepareStatement(strSelect);
            ps.setDouble(1, Balance);
            ps.setString(2, UserName);
            ps.execute();
        } catch (Exception e) {
            System.out.println("moreBalance: " + e.getMessage());
        }
    }
}
