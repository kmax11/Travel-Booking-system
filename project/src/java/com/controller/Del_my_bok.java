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
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Del_my_bok extends HttpServlet {

  

    
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {
         
        try {
            String id = req.getParameter("nam1");
            System.out.println(id);
          PreparedStatement  stmt = DBController.getPreStmt("delete from orders where tin_no=?");
            stmt.setString(1, id);
            
            stmt.executeUpdate();
            System.out.println(id);
            RequestDispatcher rd = req.getRequestDispatcher("/My_book");
             rd.forward(req, res);
        } catch (SQLException ex) {
            Logger.getLogger(Del_my_bok.class.getName()).log(Level.SEVERE, null, ex);
        }
    
    }

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        }

}
