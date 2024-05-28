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
import java.sql.PreparedStatement;
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
public class Admin extends HttpServlet {

  

  
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {
            
             
  try {
            String name=req.getParameter("name");
            String pwd =req.getParameter("pwd"); 
            String roll= req.getParameterValues("roll") == null  ? "false" : req.getParameterValues("roll")[0];
           PreparedStatement stm = DBController.getPreStmt("select full_name from User where full_name=? and password=? and roll=?");
            stm.setString(1, name);
        stm.setString(2, pwd);
        stm.setString(3, roll);
        ResultSet re=stm.executeQuery();
       if(re.next()){
            if(Boolean.parseBoolean(roll)){
                 HttpSession se = req.getSession(true);
                 se.setAttribute("roll", roll);
                 
                  se.setAttribute("username", name);
              req.setAttribute("cost_list",new Costdao().gett_cost());
            req.setAttribute("pac",new Get_pac().gett_pac());
            req.setAttribute("bok",new Get_book().gett_book());
            req.getRequestDispatcher("jspfile/Home.jsp").forward(req, res);}
            else{
                  HttpSession se = req.getSession(true);
                 
                  se.setAttribute("username", name);
                   se.setAttribute("roll", roll);
               req.setAttribute("cost_list",new Costdao().gett_cost());
            req.setAttribute("pac",new Get_pac().gett_pac());
            req.setAttribute("bok",new Get_book().gett_book());}
            req.getRequestDispatcher("/List_cost").forward(req, res);}
       else{req.getRequestDispatcher("jspfile/er.jsp").forward(req, res);}
            
        } catch (SQLException ex) {  
            Logger.getLogger(Admin.class.getName()).log(Level.SEVERE, null, ex);
        }
  
           
       
        
       
        
      
      
    }

  
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {







//
//                    
//                       <% for(int i=0;i<book.size();i++){%>
//       <%Book_l co = (Book_l) book.get(i);%>  
//              <tr style="height: 75px;">
//                <td class="u-border-1 u-border-black u-table-cell"><%= co.getSt()%></td>
//               <td class="u-border-1 u-border-black u-table-cell"><%= co.getDis()%></td>
//                <td class="u-border-1 u-border-black u-table-cell"><%= co.getVia()%></td>
//                <td class="u-border-1 u-border-black u-table-cell"><%= co.getDate()%></td>
//                <td class="u-border-1 u-border-black u-table-cell"><a href="Edit_package?nam=<%= co.getSt()%>&nam2=<%= co.getDis()%>"  class="u-border-1 u-border-active-black u-border-hover-black u-border-no-left u-border-no-right u-border-no-top u-border-palette-3-base u-bottom-left-radius-0 u-bottom-right-radius-0 u-btn u-button-style u-hover-feature u-none u-radius-0 u-text-active-black u-text-body-color u-text-hover-black u-top-left-radius-0 u-top-right-radius-0 u-btn-1">EDIT</a>
//              </td>
//                 <td class="u-border-1 u-border-black u-table-cell"><a href="Del_package?nam=<%= co.getSt()%>&nam2=<%= co.getDis()%>"  class="u-border-1 u-border-active-black u-border-hover-black u-border-no-left u-border-no-right u-border-no-top u-border-palette-3-base u-bottom-left-radius-0 u-bottom-right-radius-0 u-btn u-button-style u-hover-feature u-none u-radius-0 u-text-active-black u-text-body-color u-text-hover-black u-top-left-radius-0 u-top-right-radius-0 u-btn-1">DELETE</a>
//              </td>
//             </tr><%}%>
//    }

   

}}
