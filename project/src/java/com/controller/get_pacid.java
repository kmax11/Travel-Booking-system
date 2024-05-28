/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.controller;

import com.dao.DBController;
import com.mysql.cj.jdbc.PreparedStatementWrapper;
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

/**
 *
 * @author legend
 */
public class get_pacid extends HttpServlet {

   
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {
        
      
        try {  
            String id = req.getParameter("btn");
            PreparedStatement stm = DBController.getPreStmt("sd");
            stm.setString(1, id);
            stm.executeUpdate();
            
        } catch (SQLException ex) {
            Logger.getLogger(get_pacid.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }

   
 

   

}
