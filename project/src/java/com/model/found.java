/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Other/File.java to edit this template
 */
package com.model;

import com.dao.DBController;
import com.mysql.cj.protocol.Resultset;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import org.apache.jasper.tagplugins.jstl.core.Catch;

/**
 *
 * @author legend
 */
public final class found {

    public Boolean flag=true;
    public String pw;
    public String name;
    public String email;
    public String fl;

    public found(String name, String email)  {
        this.email=email;
        this.name=name;
    }
    public found(String name)  {
        this.name=name;
    }
     public Boolean found_() throws SQLException{
        
        PreparedStatement stm = DBController.getPreStmt("select email from User where full_name= ? ");
        stm.setString(1, name);
        ResultSet re=stm.executeQuery();
        while(re.next()){
             pw =re.getString("email");
            
        }
        
        if(!email.equals(pw)) {
                flag=false;
            } 
        return flag;
       
     }
     public String rol() throws SQLException{
         PreparedStatement stm = DBController.getPreStmt("select roll from User where full_name= ? ");
         stm.setString(1, name);
         ResultSet re=stm.executeQuery();
         while(re.next()){
             fl =re.getString("roll");
            
        }
     
     return fl;
     }
    
}
