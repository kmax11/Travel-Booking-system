/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Other/File.java to edit this template
 */
package com.dao;

import com.model.Lisst;
import com.model.cost_list;
import com.model.Pac_l;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author legend
 */
public class Get_pac {

  public List<Pac_l> gett_pac() throws SQLException{
            Lisst ls = new Lisst();
            ls.getq("package");
            ResultSet pac=ls.gett();
            List<Pac_l>  pack =new ArrayList<>();
           
            while(pac.next()){
                Pac_l pa = new Pac_l();
              pa.setPac_id(pac.getString("pac_id"));
               pa.setPac_dist(pac.getString("pac_dist"));
                 pa.setPac_contains(pac.getString("pac_contains"));
                 pa.setPac_amount(pac.getInt("pac_amount"));
                 pa.setPac_price(pac.getInt("pac_price"));
                 pack.add(pa);
                    
             
            }
      return pack;
  
  }
   public List<Pac_l> gett_pac_ind(String name) throws SQLException{
            Lisst ls = new Lisst();
            List<Pac_l>  pack =new ArrayList<>();
             PreparedStatement stm = DBController.getPreStmt("select * from buy_pac where full_name= ? ");
               stm.setString(1, name);
            ResultSet pac_id = stm.executeQuery();
            while(pac_id.next()){
                String id = pac_id.getString("pac_id");
                PreparedStatement stmt = DBController.getPreStmt("select * from package where pac_id= ? ");
               stmt.setString(1, id);
            ResultSet pac = stmt.executeQuery();
            System.out.println(pac);
           
            while(pac.next()){
                Pac_l pa = new Pac_l();
              pa.setPac_id(pac.getString("pac_id"));
               pa.setPac_dist(pac.getString("pac_dist"));
                 pa.setPac_contains(pac.getString("pac_contains"));
                 pa.setPac_amount(pac.getInt("pac_amount"));
                 pa.setPac_price(pac.getInt("pac_price"));
                 pack.add(pa);
                    
             
            }}
      return pack;
  
  }
  
}
