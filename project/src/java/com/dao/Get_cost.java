/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Other/File.java to edit this template
 */
package com.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

import java.sql.SQLException;

/**
 *
 * @author legend
 */
public class Get_cost {

    public int get_co(String fromm,String too,String via) throws SQLException {
        int a = 0;
        PreparedStatement stmt = DBController.getPreStmt("select * from costs where start=? and distn=?");
        stmt.setString(1, fromm);
        stmt.setString(2, too);
        ResultSet rs = stmt.executeQuery();
        while(rs.next()){
             a=rs.getInt(via);
        }
        return a;
    }
}
