/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.controller;

import com.dao.Del_pac;
import com.dao.Edit_pac;
import com.model.Lisst;
import java.io.IOException;
import java.io.PrintWriter;
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
public class Edit_package extends HttpServlet {


    
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {
        
        try {
         Del_pac ls= new Del_pac(req.getParameter("nam"));
            req.setAttribute("id", ls.edi());
            req.getRequestDispatcher("jspfile/add_pac.jsp").forward(req, res);
        } catch (SQLException ex) {
            Logger.getLogger(Edit_package.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

   
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {
        
        try {String id= (String)req.getAttribute("id");
        String pac_dis = req.getParameter("pac_d");
         String pac_con = req.getParameter("pac_con");
        Integer pac_amo = Integer.parseInt(req.getParameter("pac_am"));
         Integer pac_pri = Integer.parseInt(req.getParameter("pac_pri"));
         
         Edit_pac ed = new Edit_pac(id,pac_dis,pac_con,pac_amo,pac_pri);
            ed.edit();
            req.setAttribute("id",null);
            req.getRequestDispatcher("jspfile/add_pac.jsp").forward(req, res);
        } catch (SQLException ex) {
            Logger.getLogger(Edit_package.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }

    
}
