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
public class Del_pac {

    private String qur ="delete from package where pac_id=?";
    private String qu ="select * from package where pac_id=?";
    private String id;
    public Del_pac(String id){
    this.id=id;
    }
    public void del() throws SQLException{
    PreparedStatement stmt = DBController.getPreStmt(qur);
    stmt.setString(1, id);  
    stmt.executeUpdate();
    }
    public ResultSet edi() throws SQLException{
        PreparedStatement stmt = DBController.getPreStmt(qu);
         stmt.setString(1, id);
         ResultSet rs = stmt.executeQuery();
        return rs;
    }
}
