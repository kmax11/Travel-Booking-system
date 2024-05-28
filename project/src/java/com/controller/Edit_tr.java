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
public class Edit_tr extends HttpServlet {

    

   
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {
        String st = req.getParameter("nam");
           String dis = req.getParameter("nam1");
           String date = req.getParameter("nam3");
           String via = req.getParameter("nam2");
           DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
           LocalDate datee = LocalDate.parse(date, formatter);
           PreparedStatement stmt;
        try {
            stmt = DBController.getPreStmt("delete from days where from_m=? and to_o=? and date=? and via=?");
            stmt.setString(1, st);
            stmt.setString(2, dis);
            stmt.setDate(3, Date.valueOf(datee));
            stmt.setString(4, via);
               
            stmt.executeUpdate();
            req.setAttribute("cost_list",new Costdao().gett_cost());
               req.setAttribute("pac",new Get_pac().gett_pac());
               req.setAttribute("bok",new Get_book().gett_book());
        req.getRequestDispatcher("jspfile/Trav.jsp").forward(req, res);
        } catch (SQLException ex) {
            Logger.getLogger(Edit_tr.class.getName()).log(Level.SEVERE, null, ex);
        }
    
    }

   
}
