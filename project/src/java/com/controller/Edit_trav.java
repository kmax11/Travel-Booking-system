/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.controller;

import com.dao.Costdao;
import com.dao.Get_book;
import com.dao.Get_pac;
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
public class Edit_trav extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {
       try {
               req.setAttribute("cost_list",new Costdao().gett_cost());
               req.setAttribute("pac",new Get_pac().gett_pac());
               req.setAttribute("bok",new Get_book().gett_book());
        req.getRequestDispatcher("jspfile/Trav.jsp").forward(req, res);
           } catch (SQLException ex) {
               Logger.getLogger(Creat_date_t.class.getName()).log(Level.SEVERE, null, ex);
           }
    }
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {
       try {
           
               req.setAttribute("cost_list",new Costdao().gett_cost());
               req.setAttribute("pac",new Get_pac().gett_pac());
               req.setAttribute("bok",new Get_book().gett_book());
        req.getRequestDispatcher("jspfile/Trav.jsp").forward(req, res);
           } catch (SQLException ex) {
               Logger.getLogger(Creat_date_t.class.getName()).log(Level.SEVERE, null, ex);
           }
    }


}
