/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.controller;

import com.dao.DBController;
import java.io.IOException;
import java.io.PrintWriter;
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
public class Buy_package extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {
       
       String name = (String) req.getSession().getAttribute("username");
       if(name==null){
       req.getRequestDispatcher("/List_cost").forward(req, res);
       }else{
       
        
         PreparedStatement stmt;
        try {
            String pac_id=(String)req.getParameter("nam1");
            stmt = DBController.getPreStmt("INSERT INTO buy_pac(full_name, pac_id, confi) VALUES(?,?,?)");
            stmt.setString(1,name);
            stmt.setString(2,pac_id);
            
            stmt.setBoolean(3, false);
             stmt.executeUpdate();
            PrintWriter out = res.getWriter();
        res.setContentType("text/html");
       
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
            out.println("<h1>Booking Confirmation</h1>");
            out.println("<p>Your booking has been successful!</p>");
            out.println("<p>Thank you for choosing our service. We look forward to seeing you soon. Your tin number for payment is "+pac_id+"</p>");
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
        

        } catch (SQLException ex) {
            Logger.getLogger(Buy_package.class.getName()).log(Level.SEVERE, null, ex);
        }}
        
    }

   
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {
        String name = (String) req.getSession().getAttribute("username");
         String pac_id=req.getParameterValues("btn")[0];
         String pac_i=req.getParameter("nam");
         PreparedStatement stmt;
        try {
            stmt = DBController.getPreStmt("INSERT INTO buy_pac(full_name, pac_id,confi) VALUES(?,?,?)");
            stmt.setString(1,name);
            stmt.setString(2,pac_id);
             stmt.executeUpdate();
           
       
        } catch (SQLException ex) {
            Logger.getLogger(Buy_package.class.getName()).log(Level.SEVERE, null, ex);
        }
         
          
         
    }

   
}
