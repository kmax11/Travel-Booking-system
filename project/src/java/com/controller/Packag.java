/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.controller;

import com.dao.Costdao;
import com.dao.DBController;
import com.dao.Get_book;
import com.dao.Get_pac;
import com.model.Generate_tin;
import java.io.IOException;
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
public class Packag extends HttpServlet {

  

   
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {
        try {
            req.setAttribute("cost_list",new Costdao().gett_cost());
            req.setAttribute("pac",new Get_pac().gett_pac());
       req.getRequestDispatcher("jspfile/add_pac.jsp").forward(req, res);
        } catch (SQLException ex) {
            Logger.getLogger(Packag.class.getName()).log(Level.SEVERE, null, ex);
        }
            
    }

   
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {
        
        try {
            Generate_tin pac = new Generate_tin();
            String pac_num =  pac.getAlphaNumericString();
            String pac_dis = req.getParameter("pac_d");
            String pac_con = req.getParameter("pac_con");
            Integer pac_amo = Integer.parseInt(req.getParameter("pac_am"));
            Integer pac_pri = Integer.parseInt(req.getParameter("pac_pri"));
            PreparedStatement stmt = DBController.getPreStmt("INSERT INTO package(pac_id,pac_dist, pac_contains, pac_amount, pac_price) VALUES (?,?,?,?,?)");
            stmt.setString(1,pac_num);
            stmt.setString(2,pac_dis);
            stmt.setString(3,pac_con);
            stmt.setInt(4,pac_amo);
            stmt.setInt(5,pac_pri);
            int i = stmt.executeUpdate();
             req.setAttribute("cost_list",new Costdao().gett_cost());
            req.setAttribute("pac",new Get_pac().gett_pac());
            req.setAttribute("bok",new Get_book().gett_book());
            req.getRequestDispatcher("jspfile/Home.jsp").forward(req, res);
        } catch (SQLException ex) {
            Logger.getLogger(Packag.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

   

}
