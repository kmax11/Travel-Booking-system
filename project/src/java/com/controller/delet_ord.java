/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.controller;

import com.dao.DBController;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.PreparedStatement;
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
public class delet_ord extends HttpServlet {


   
 

   
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        
        try {
            HttpSession se = req.getSession(true);
            String name =(String) se.getAttribute("username");
            PreparedStatement stmt;
            stmt = DBController.getPreStmt("delete from orders where full_name=? ");
             stmt.setString(1,name);
            stmt.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(delet_ord.class.getName()).log(Level.SEVERE, null, ex);
        }
          
           
           
    }

   

}
