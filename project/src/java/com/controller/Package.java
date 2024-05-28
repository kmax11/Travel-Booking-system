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
import javax.servlet.http.HttpSession;

/**
 *
 * @author legend
 */
public class Package extends HttpServlet {

    

    
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {
        try {HttpSession se = req.getSession(true);
                 
                String ls=(String)  se.getAttribute("username");
                if(ls!=null){
            req.setAttribute("cost_list",new Costdao().gett_cost());
            req.setAttribute("packk",new Get_pac().gett_pac_ind((String) req.getSession().getAttribute("username")));
             req.setAttribute("bok",new Get_book().gett_book());
       req.getRequestDispatcher("jspfile/pac_ind.jsp").forward(req, res);}else{req.getRequestDispatcher("/List_cost").forward(req, res);}
        } catch (SQLException ex) {
            Logger.getLogger(Package.class.getName()).log(Level.SEVERE, null, ex);
        }
             
    }



    


}
