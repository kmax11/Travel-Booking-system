/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Other/File.java to edit this template
 */
package com.dao;

import com.model.Book_l;
import com.model.Lisst;
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
public class Get_book {

  public List<Book_l> gett_book() throws SQLException{
            Lisst ls = new Lisst();
            ls.getq("days");
            ResultSet bok =ls.gett();
            List<Book_l>  pack =new ArrayList<>();
           
            while(bok.next()){
                Book_l pa = new Book_l();
              pa.setSt(bok.getString("from_m"));
               pa.setDis(bok.getString("to_o"));
                 pa.setDate(bok.getString("date"));
                 pa.setVia(bok.getString("via"));
                 
                 pack.add(pa);
                    
             
            }
      return pack;
  
  }
  public List<Book_l> gett_book_search(String start,String dis,String via) throws SQLException{
            Lisst ls = new Lisst();
             PreparedStatement stm = DBController.getPreStmt("select * from days where from_m= ? and to_o= ? and via= ?");
               stm.setString(1, start);
               stm.setString(2, dis);
               stm.setString(3, via);
            ResultSet bok = stm.executeQuery();
            List<Book_l>  pack =new ArrayList<>();
           
            while(bok.next()){
                Book_l pa = new Book_l();
              pa.setSt(bok.getString("from_m"));
               pa.setDis(bok.getString("to_o"));
                 pa.setDate(bok.getString("date"));
                 pa.setVia(bok.getString("via"));
                 
                 pack.add(pa);
                    
             
            }
      return pack;
  
  }
}
