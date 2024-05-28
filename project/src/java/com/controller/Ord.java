/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.controller;

import com.dao.Get_book;
import com.dao.Orders;
import com.model.Generate_tin;
import com.model.found;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author legend
 */
public class Ord extends HttpServlet {
    
     @Override
  protected void doGet(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {
  
   
         try {
            String st =  req.getParameterValues("select")[0];
           String dis =  req.getParameterValues("select-1")[0];
            
            String via = req.getParameterValues("select-2")[0];
            
            

             req.setAttribute("bok",new Get_book().gett_book_search(st, dis, via));
             req.getRequestDispatcher("jspfile/booking.jsp").forward(req, res);
              Generate_tin tin = new Generate_tin();
          HttpSession se = req.getSession(true);
          
         String ti = tin.getAlphaNumericString(); 
         String name = (String) se.getAttribute("username");
        
         String start =  req.getParameter("nam");
         String di =  req.getParameter("nam2");
         String vi =  req.getParameter("via");
         String date =  req.getParameter("date");
           
           Orders us = new Orders(name,start ,di ,ti,vi,date);
            us.get_or();
             
             req.getRequestDispatcher("/order").forward(req, res);
         } catch (SQLException ex) {
             Logger.getLogger(Ord.class.getName()).log(Level.SEVERE, null, ex);
         }
               
     
  
  
  
  
  }
   

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {
         
        
        try {
            Generate_tin tin = new Generate_tin();
          HttpSession se = req.getSession(true);
          
         String ti = tin.getAlphaNumericString(); 
         String name = (String) se.getAttribute("username");
        
         String start =  req.getParameter("nam");
         String dis =  req.getParameter("nam2");
         String via =  req.getParameter("via");
         String date =  req.getParameter("date");
           
           Orders us = new Orders(name,start ,dis ,ti,via,date);
            us.get_or();
             
             req.getRequestDispatcher("/order").forward(req, res);
           
     
            
        } catch (Exception ex) {
            ex.printStackTrace();
     }
    }


}
