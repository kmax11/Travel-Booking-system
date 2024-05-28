/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Other/File.java to edit this template
 */
package com.model;

import com.dao.DBController;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author legend
 */
public class Lisst {
public String qur="select * from ";
     public void getq(String q){
     this.qur=this.qur+q;
     
     }
    public ResultSet gett() throws SQLException {
        PreparedStatement stmt = DBController.getPreStmt(qur);
         ResultSet rs = stmt.executeQuery();
           return rs;
    }
}
