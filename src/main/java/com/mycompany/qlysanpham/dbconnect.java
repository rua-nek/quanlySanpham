/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.qlysanpham;

import java.sql.Connection;

/**
 *
 * @author nam11
 */
public class dbconnect {
    private static final String URL = "jdbc:sqlserver://localhost:1433;databaseName=qlysanpham;encrypt=true;trustServerCertificate=true;unicode=true;characterEncoding=UTF-8";
    private static final String USER = "sa";
    private static final String PASS = "123456789";
    public static Connection getConnection() throws Exception {
        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        Connection conn = java.sql.DriverManager.getConnection(URL, USER, PASS);
        return conn;
    }
    public static void main(String[] args) {
        try {
            Connection conn = getConnection();
            if (conn != null) {
                System.out.println("Ket noi thanh cong!");
            } else {
                System.out.println("Ket noi that bai!");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
