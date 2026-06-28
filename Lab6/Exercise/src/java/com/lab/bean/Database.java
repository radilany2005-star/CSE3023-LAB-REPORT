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
import java.sql.DriverManager;

public class Database {

    public static Connection getConnection() {

        Connection con = null;

        try {

            Class.forName("com.mysql.cj.jdbc.Driver");

            con = DriverManager.getConnection("jdbc:mysql://localhost:3307/cse3023","root","");

        } catch (Exception e) {
            e.printStackTrace();
        }

        return con;
    }

    public static void closeConnection(Connection con) {

        try {

            if (con != null) {
                con.close();
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
