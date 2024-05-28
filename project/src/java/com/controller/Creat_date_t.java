/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.controller;

import com.dao.Costdao;
import com.dao.DBController;
import com.dao.Get_book;
import com.dao.Get_pac;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
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
public class Creat_date_t extends HttpServlet {


       @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {
           
            
        req.getRequestDispatcher("jspfile/Create-travle.jsp").forward(req, res);
    }

    
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {
        
                
           try {
               String st =  req.getParameterValues("st_c")[0];
               String di =  req.getParameterValues("des_c")[0];
               String via =  req.getParameterValues("Via")[0];
                
               String day = (String) req.getParameter("date");
               DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
               LocalDate datee = LocalDate.parse(day, formatter);
               
               PreparedStatement stm = DBController.getPreStmt("insert into days(from_m, to_o, date,via) values(?,?,?,?)");
               stm.setString(1, st);
               stm.setString(2, di);
               stm.setDate(3, Date.valueOf(datee));
               stm.setString(4, via);
               stm.executeUpdate();
               req.setAttribute("pac",new Get_pac().gett_pac());
               req.getRequestDispatcher("jspfile/Home.jsp").forward(req, res);
              // req.getRequestDispatcher("/List_cost").forward(req, res);

           } catch (SQLException ex) {
               Logger.getLogger(Creat_date_t.class.getName()).log(Level.SEVERE, null, ex);
           }
                   
    }

   

}
