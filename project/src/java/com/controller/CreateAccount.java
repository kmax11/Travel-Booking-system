/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.controller;

import com.dao.DBController;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
/**
 *
 * @author naol
 */
public class CreateAccount extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        RequestDispatcher view = req.getRequestDispatcher("jspfile/regi.jsp");
        view.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("name");
        String email = req.getParameter("email");
        String password=  req.getParameter("pwd");
        String passwordConfirm = req.getParameter("pwd1");
        String address=  req.getParameter("address");
        String sex=  req.getParameterValues("sex")[0];
        String roll= req.getParameterValues("roll") == null  ? "false" : req.getParameterValues("roll")[0];
        Integer age=  Integer.parseInt(req.getParameter("age"));
        Integer p_no=  Integer.parseInt(req.getParameter("phone"));
        System.out.print(name);
        
        
        if (name.isEmpty()  || email.isEmpty() || password.isEmpty() || passwordConfirm.isEmpty()) {
            req.setAttribute("error-msg", "Please Fill out all Forms");
            RequestDispatcher rd = req.getRequestDispatcher("jspfile/signUp.jsp");
            rd.forward(req, resp);
        }
        
        if (!password.equals(passwordConfirm)) {
            req.setAttribute("error-msg", "Passwords Don't Match");
            RequestDispatcher rd = req.getRequestDispatcher("jspfile/signUp.jsp");
            rd.forward(req, resp);
        }
        else{
        
        try {
            PreparedStatement stmt = DBController.getPreStmt("INSERT INTO User(full_name, email, p_no, sex, age, address, password, roll) VALUES (?,?,?,?,?,?,?,?)");
            stmt.setString(1, name);
            stmt.setString(2,email);
            stmt.setInt(3,p_no);
            stmt.setString(4,sex);
            stmt.setInt(5,age);
            stmt.setString(6,address);
            stmt.setString(7,password);
          
            
            System.out.println(roll);
            stmt.setString(8, roll);
            
            int i =stmt.executeUpdate();
            
            resp.sendRedirect(".");
        } catch (Exception ex) {
            Logger.getLogger(CreateAccount.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }
    
    
    } 
}
