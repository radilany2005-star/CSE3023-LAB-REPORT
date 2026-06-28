/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.lab.bean;

/**
 *
 * @author radil
 */

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserDAO {

    // INSERT USER
    public static int insertUser(User user) {

        int status = 0;

        try {

            Connection con = Database.getConnection();

            String sql = "INSERT INTO userprofile VALUES (?, ?, ?, ?)";

            PreparedStatement ps = con.prepareStatement(sql);

            ps.setString(1, user.getUsername());
            ps.setString(2, user.getPassword());
            ps.setString(3, user.getFirstname());
            ps.setString(4, user.getLastname());

            status = ps.executeUpdate();

            Database.closeConnection(con);

        } catch (Exception e) {
            e.printStackTrace();
        }

        return status;
    }

    // LOGIN VALIDATION
    public static User login(String username, String password) {

        User user = null;

        try {

            Connection con = Database.getConnection();

            String sql = "SELECT * FROM userprofile WHERE username=? AND password=?";

            PreparedStatement ps = con.prepareStatement(sql);

            ps.setString(1, username);
            ps.setString(2, password);

            ResultSet rs = ps.executeQuery();

            if (rs.next()) {

                user = new User();

                user.setUsername(rs.getString("username"));
                user.setFirstname(rs.getString("firstname"));
                user.setLastname(rs.getString("lastname"));
            }

            Database.closeConnection(con);

        } catch (Exception e) {
            e.printStackTrace();
        }

        return user;
    }

}
