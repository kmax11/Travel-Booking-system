/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Other/File.java to edit this template
 */
package com.dao;

import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 *
 * @author legend
 */
public class Edit_pac {

    private String qur ="update package set pac_dist=?, pac_contains=?, pac_amount=?, pac_price=? where pac_id=?" ;
    private String id;
    private String pac_dist;
    private String pac_contains;
    private int pac_amount,pac_price;
   
    
    public Edit_pac(String id,String pd,String pc,int pa,int pp){
    this.id=id;
    this.pac_amount=pa;
    this.pac_contains=pc;
    this.pac_dist=pd;
    this.pac_price=pp;
    }
    public void edit() throws SQLException{
    PreparedStatement stmt = DBController.getPreStmt(qur);
    stmt.setString(1, pac_dist);
    stmt.setString(2, pac_contains);
    stmt.setInt(3, pac_amount);
    stmt.setInt(4, pac_price);
    stmt.setString(5, id);
    stmt.executeUpdate();
    }
}
