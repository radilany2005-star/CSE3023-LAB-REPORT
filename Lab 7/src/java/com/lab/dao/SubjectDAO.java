package com.lab.dao;

import com.lab.bean.SubjectBean;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import java.util.ArrayList;
import java.util.List;

public class SubjectDAO {

    // DATABASE CONNECTION
    private String jdbcURL =
            "jdbc:mysql://localhost:3306/lab7_db";

    private String jdbcUsername = "root";

    private String jdbcPassword = "";

    private Connection getConnection() {

        Connection con = null;

        try {

            Class.forName("com.mysql.cj.jdbc.Driver");

            con = DriverManager.getConnection(
                    jdbcURL,
                    jdbcUsername,
                    jdbcPassword
            );

        } catch (Exception e) {
            e.printStackTrace();
        }

        return con;
    }

    // ================= CREATE =================
    public boolean addSubject(SubjectBean subject) {

        boolean status = false;

        try {

            Connection con = getConnection();

            String sql =
                    "INSERT INTO subject "
                    + "(matric_no, subject_name, subject_code) "
                    + "VALUES (?, ?, ?)";

            PreparedStatement ps =
                    con.prepareStatement(sql);

            ps.setString(1, subject.getMatricNo());
            ps.setString(2, subject.getSubjectName());
            ps.setString(3, subject.getSubjectCode());

            int row = ps.executeUpdate();

            if (row > 0) {
                status = true;
            }

            con.close();

        } catch (Exception e) {
            e.printStackTrace();
        }

        return status;
    }

    // ================= READ =================
    public List<SubjectBean> getAllSubjects(String matricNo) {

        List<SubjectBean> list = new ArrayList<>();

        try {

            Connection con = getConnection();

            String sql =
                    "SELECT * FROM subject "
                    + "WHERE matric_no=?";

            PreparedStatement ps =
                    con.prepareStatement(sql);

            ps.setString(1, matricNo);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {

                SubjectBean s = new SubjectBean();

                s.setId(rs.getInt("id"));
                s.setMatricNo(rs.getString("matric_no"));
                s.setSubjectName(rs.getString("subject_name"));
                s.setSubjectCode(rs.getString("subject_code"));

                list.add(s);
            }

            con.close();

        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }

    // ================= GET BY ID =================
    public SubjectBean getSubjectById(int id) {

        SubjectBean s = new SubjectBean();

        try {

            Connection con = getConnection();

            String sql =
                    "SELECT * FROM subject WHERE id=?";

            PreparedStatement ps =
                    con.prepareStatement(sql);

            ps.setInt(1, id);

            ResultSet rs = ps.executeQuery();

            if (rs.next()) {

                s.setId(rs.getInt("id"));
                s.setMatricNo(rs.getString("matric_no"));
                s.setSubjectName(rs.getString("subject_name"));
                s.setSubjectCode(rs.getString("subject_code"));
            }

            con.close();

        } catch (Exception e) {
            e.printStackTrace();
        }

        return s;
    }

    // ================= UPDATE =================
    public boolean updateSubject(SubjectBean subject) {

        boolean status = false;

        try {

            Connection con = getConnection();

            String sql =
                    "UPDATE subject "
                    + "SET subject_name=?, subject_code=? "
                    + "WHERE id=?";

            PreparedStatement ps =
                    con.prepareStatement(sql);

            ps.setString(1, subject.getSubjectName());
            ps.setString(2, subject.getSubjectCode());
            ps.setInt(3, subject.getId());

            int row = ps.executeUpdate();

            if (row > 0) {
                status = true;
            }

            con.close();

        } catch (Exception e) {
            e.printStackTrace();
        }

        return status;
    }

    // ================= DELETE =================
    public boolean deleteSubject(int id) {

        boolean status = false;

        try {

            Connection con = getConnection();

            String sql =
                    "DELETE FROM subject WHERE id=?";

            PreparedStatement ps =
                    con.prepareStatement(sql);

            ps.setInt(1, id);

            int row = ps.executeUpdate();

            if (row > 0) {
                status = true;
            }

            con.close();

        } catch (Exception e) {
            e.printStackTrace();
        }

        return status;
    }
}