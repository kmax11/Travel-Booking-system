/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.controller;

import com.dao.DBController;
import com.model.Lisst;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
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
public class Confii extends HttpServlet {

      @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {
        String btn=req.getParameter("btn");
        
        PreparedStatement stmt;
        try {System.out.println(btn);
            stmt = DBController.getPreStmt("select * from confirmation where tin_no=?");
            stmt.setString(1, btn);
            
        ResultSet rs = stmt.executeQuery();
         
        
        while(rs.next()){
            System.out.println(rs.getBoolean("confi"));
           
            PreparedStatement stm;
            
                stm = DBController.getPreStmt("UPDATE confirmation SET confi = ? WHERE tin_no = ?");
                if(rs.getBoolean("confi")){
                stm.setBoolean(1,!rs.getBoolean("confi"));
                stmt.setString(2, btn);
                stm.executeUpdate();
            }else{
            stm.setBoolean(1,!rs.getBoolean("confi"));
            stm.setString(2, btn);
            stm.executeUpdate();}
           
         }
        } catch (SQLException ex) {
                Logger.getLogger(Confi.class.getName()).log(Level.SEVERE, null, ex);
            }
              
        
      
       
            
        try {
            Lisst pac = new Lisst();
            pac.getq("buy_pac");
            Lisst ord = new Lisst();
            ord.getq("confirmation");
            req.setAttribute("pac_all", pac.gett());
            req.setAttribute("ord_all", ord.gett());
            req.getRequestDispatcher("jspfile/Confirmation.jsp").forward(req, res);
        } catch (SQLException ex) {
            Logger.getLogger(Confi.class.getName()).log(Level.SEVERE, null, ex);
        }
    }}
