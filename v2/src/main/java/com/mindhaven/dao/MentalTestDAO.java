package com.mindhaven.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.mindhaven.entity.MentalTest;

public class MentalTestDAO {

    private Connection conn;

    public MentalTestDAO(Connection conn) {
        this.conn = conn;
    }

    public boolean addMentalTestResult(MentalTest mentalTest) {
        boolean isSuccess = false;

        try {
            String sql = "INSERT INTO mentaltest (score, status, test_date, user_name) VALUES (?, ?, CURDATE(), ?)";
            PreparedStatement pstmt = conn.prepareStatement(sql);

            pstmt.setString(1, mentalTest.getScore());
            pstmt.setString(2, mentalTest.getStatus());
            pstmt.setString(3, mentalTest.getUserName());

            pstmt.executeUpdate();
            isSuccess = true;
        } catch (Exception e) {
            e.printStackTrace();
        }

        return isSuccess;
    }
}
