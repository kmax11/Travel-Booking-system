/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.controller;

import com.dao.DBController;
import com.dao.Get_book;
import com.dao.Orders;
import com.model.Generate_tin;
import com.model.found;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import util.Exceptions;


public class order extends HttpServlet {

  

    
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {
           HttpSession se = req.getSession(true);
           String name = (String)se.getAttribute("username");
           
           if(name==null){
               
               req.getRequestDispatcher("/List_cost").forward(req, res);
               
           }else{
               try {
               req.setAttribute("bok",new Get_book().gett_book());
               req.getRequestDispatcher("jspfile/booking.jsp").forward(req, res);
               } catch (SQLException ex) {
                   Logger.getLogger(order.class.getName()).log(Level.SEVERE, null, ex);
               }
               
           }
          
          
            
    }

   
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {
       
         
        try {
           String st = req.getParameter("select");
         String ds = req.getParameter("select-1");
         String vi = req.getParameter("select-2");
            PreparedStatement stm = DBController.getPreStmt("select * from days where from_m=? and to_o=? and via=?");
            
          stm.setString(1, st);
          stm.setString(2,ds);
          stm.setString(3, vi);
          ResultSet or =stm.executeQuery();
          req.setAttribute("buytk", or);
          req.getRequestDispatcher("jspfile/booking.jsp").forward(req, res);
        } catch (SQLException ex) {
            Logger.getLogger(order.class.getName()).log(Level.SEVERE, null, ex);
        }
          
          
        
             
             
             
         }
         
         
    }

    


