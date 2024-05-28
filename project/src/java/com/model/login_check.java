/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.model;

import com.controller.CreateAccount;
import com.dao.DBController;
import com.mysql.cj.protocol.Resultset;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author legend
 */
public class login_check {
    public String sql="select * from User where full_name=?";
    public String name;
    public String password;
    public String pwd,rol,roll;
    
    
    public Boolean flag;
   public  login_check(String  name,String  password,String rol){
        this.flag = true;
        this.name=name;
        this.password=password;
        this.rol = rol;
    }
    public Boolean check(){
         
        try {
            PreparedStatement stmt = DBController.getPreStmt(sql);
            stmt.setString(1,name );
            
            
            ResultSet rs = stmt.executeQuery();
            while(rs.next()){
                pwd = rs.getString("password");
                roll = rs.getString("roll");
            }
            this.flag = password.equals(pwd);
       
            
        } catch (SQLException ex) {
            Logger.getLogger(CreateAccount.class.getName()).log(Level.SEVERE, null, ex);
        }
        return flag;
    }
     public Boolean rol(){
        return Boolean.valueOf(this.roll);
     }
}
