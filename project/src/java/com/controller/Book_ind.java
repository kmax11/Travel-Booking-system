/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.controller;

import com.dao.DBController;
import com.dao.Orders;
import com.model.Generate_tin;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author legend
 */
public class Book_ind extends HttpServlet {

   

  
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {
        try {
            Generate_tin tin = new Generate_tin();
          HttpSession se = req.getSession(true);
          
         String ti = tin.getAlphaNumericString(); 
         String name = (String) se.getAttribute("username");
        
         String start =  req.getParameter("nam");
         String dis =  req.getParameter("nam2");
         String via =  req.getParameter("via");
         String date =  req.getParameter("date");
           
           Orders us = new Orders(name,start ,dis ,ti,via,date);
            us.get_or();
             PreparedStatement stm = DBController.getPreStmt("insert into confirmation(full_name,tin_no,confi) values(?,?,?)");
            stm.setString(1, name);
            stm.setString(2, ti);
             stm.setBoolean(3, false);
             
             stm.executeUpdate();
             res.setContentType("text/html;charset=UTF-8");
        
        try (PrintWriter out = res.getWriter()) {
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Booking Confirmation</title>");
            out.println("<style>");
            out.println("body {");
            out.println("    font-family: Arial, sans-serif;");
            out.println("    background-color: #f2f2f2;");
            out.println("    color: #333;");
            out.println("    margin: 0;");
            out.println("    padding: 0;");
            out.println("}");
            out.println("h1 {");
            out.println("    font-size: 2.5rem;");
            out.println("    text-align: center;");
            out.println("    margin-top: 50px;");
            out.println("}");
            out.println("p {");
            out.println("    font-size: 1.2rem;");
            out.println("    line-height: 1.5;");
            out.println("    text-align: center;");
            out.println("    margin: 20px 0;");
            out.println("}");
            out.println(".success-message {");
            out.println("    background-color: #2ecc71;");
            out.println("    color: #fff;");
            out.println("    padding: 20px;");
            out.println("    border-radius: 5px;");
            out.println("    box-shadow: 0 0 10px rgba(0,0,0,0.2);");
            out.println("    margin: 50px auto;");
            out.println("    max-width: 600px;");
            out.println("}");
            out.println("button {");
            out.println("    display: block;");
            out.println("    margin: 20px auto;");
            out.println("    padding: 10px 20px;");
            out.println("    background-color: #3498db;");
            out.println("    color: #fff;");
            out.println("    border: none;");
            out.println("    border-radius: 5px;");
            out.println("    box-shadow: 0 0 10px rgba(0,0,0,0.2);");
            out.println("    cursor: pointer;");
            out.println("}");
            out.println("button:hover {");
            out.println("    background-color: #2980b9;");
            out.println("}");
            out.println("</style>");
            out.println("</head>");
            out.println("<body>");
            out.println("<div class=\"success-message\">");
            out.println("<h1>travel Booking Confirmation</h1>");
            out.println("<p>Your booking has been successful!</p>");
            out.println("<p>Thank you for choosing our service. We look forward to seeing you soon. Your tin number for payment is "+ti+"</p>");
            out.println("<button onclick=\"goBack()\">Back</button>");
            out.println("</div>");
            out.println("<script>");
            out.println("function goBack() {");
            out.println("    window.history.back();");
            out.println("}");
            out.println("</script>");
            out.println("</body>");
            out.println("</html>");
            out.close();
        }

           
     
            
        } catch (Exception ex) {
            ex.printStackTrace();
     }
    }


    
}
