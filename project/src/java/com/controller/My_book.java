/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.controller;

import com.model.Lisst;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
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
public class My_book extends HttpServlet {

   
   
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {
                
        try {
            
            HttpSession se = req.getSession(true);
                 
                String ls=(String)  se.getAttribute("username");
                if(ls!=null){
                Lisst me = new Lisst();
                me.getq("orders");
            ResultSet me_bok =me.gett();
            req.setAttribute("mybook", me_bok);
            req.getRequestDispatcher("jspfile/Trav_1.jsp").forward(req, res);
            req.setAttribute("mybook", null);}else{req.getRequestDispatcher("/List_cost").forward(req, res);}
        } catch (SQLException ex) {
            Logger.getLogger(My_book.class.getName()).log(Level.SEVERE, null, ex);
        }
                
    }

  


   
}
