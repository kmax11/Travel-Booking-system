/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.dao;

import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;


public class DBController {
   
    private static Connection conn;
    
    private static void connect() throws SQLException {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(DBController.class.getName()).log(Level.SEVERE, null, ex);
        }
            conn = DriverManager.getConnection("jdbc:mysql://localhost/projectdb", "root", "");
        
    }
    
    static Connection getConn() throws SQLException {
        if (conn == null) {
            connect();
        }
        
        return conn;
    }
    
    public static PreparedStatement getPreStmt(String sql) throws SQLException {
        return getConn().prepareStatement(sql);
    }
}
