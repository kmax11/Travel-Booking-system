/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.controller;
import com.model.Lisst;
import com.dao.Costdao;
import com.dao.Get_book;
import com.dao.Get_pac;
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
public class List_cost extends HttpServlet {


   
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {
        
         try {
             HttpSession se = req.getSession(true);
            String ro = (String)se.getAttribute("roll");
            String r = (String)se.getAttribute("username");
            req.setAttribute("cost_list",new Costdao().gett_cost());
             req.setAttribute("pac",new Get_pac().gett_pac());
             req.setAttribute("bok",new Get_book().gett_book());
            
             if(ro==null || !Boolean.parseBoolean(ro)){
            req.getRequestDispatcher("jspfile/home_user.jsp").forward(req, res);}
             else{req.getRequestDispatcher("jspfile/Home.jsp").forward(req, res);}
            
        } catch (SQLException ex) {
            Logger.getLogger(List_cost.class.getName()).log(Level.SEVERE, null, ex);
        }
         
    }

   
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {
        
        try {
            req.setAttribute("cost_list",new Costdao().gett_cost());
            
            req.setAttribute("pac",new Get_pac().gett_pac());
            req.getRequestDispatcher("jspfile/home_user.jsp").forward(req, res);
        } catch (SQLException ex) {
            Logger.getLogger(List_cost.class.getName()).log(Level.SEVERE, null, ex);
        }
        
       
        
        
    }

    

}
