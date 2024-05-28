
package com.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author legend
 */
public class Orders {
    public String name;
    public String start;
    public String distn;
    public String via;
    public String tin,date;
    
    
    public String sql="INSERT INTO orders(full_name, start, distn, tin_no, via, date) VALUES (?,?,?,?,?,?)";
  
  
    public Orders(String name, String start, String dis, String ti, String via,String date) {
        this.name=name;
        this.start=start;
         this.distn=dis;
          this.tin=ti;
         this.via=via;
         this.date=date;
    
    }

    
    public void get_or() throws SQLException {
         
            PreparedStatement stm = DBController.getPreStmt(sql);
            stm.setString(1, name);
            stm.setString(2, start);
             stm.setString(3, distn);
             stm.setString(4, tin);
             stm.setString(5, via);
             stm.setString(6, date);
             stm.executeUpdate();
             
      
 
    }
    
    
}
