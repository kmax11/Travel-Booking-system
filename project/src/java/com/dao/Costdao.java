/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Other/File.java to edit this template
 */
package com.dao;

import com.model.Lisst;
import com.model.cost_list;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author legend
 */
public class Costdao {

  public List<cost_list> gett_cost() throws SQLException{
            Lisst ls = new Lisst();
            ls.getq("costs");
            ResultSet cost=ls.gett();
            List<cost_list>  coat =new ArrayList<>();
           
            while(cost.next()){
                cost_list coss = new cost_list();
              coss.setStart(cost.getString("start"));
               coss.setDistn(cost.getString("distn"));
                 coss.setFlight(cost.getInt("flight"));
                 coss.setBus(cost.getInt("bus"));
                 coss.setTrian(cost.getInt("train"));
                 coat.add(coss);
                  
             
            }
      return coat;
  
  }
}
