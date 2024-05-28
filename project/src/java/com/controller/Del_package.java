
package com.controller;
import com.dao.Costdao;
import com.dao.DBController;
import com.dao.Del_pac;
import com.dao.Get_book;
import com.dao.Get_pac;
import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author legend
 */
public class Del_package extends HttpServlet {



    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {
        
        try {
            Del_pac del= new Del_pac(req.getParameter("nam"));
            del.del();
            req.setAttribute("cost_list",new Costdao().gett_cost());
            req.setAttribute("pac",new Get_pac().gett_pac());
            RequestDispatcher rd = req.getRequestDispatcher("jspfile/Home.jsp");
              rd.forward(req, res);
        } catch (SQLException ex) {
            Logger.getLogger(Del_package.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {
        PreparedStatement stm;
        try {
            stm = DBController.getPreStmt("delete from buy_pac where pac_id=?");
            stm.setString(1, req.getParameter("id"));       
            stm.executeUpdate();
            req.setAttribute("cost_list",new Costdao().gett_cost());
               req.setAttribute("pac",new Get_pac().gett_pac());
               req.setAttribute("bok",new Get_book().gett_book());
        req.getRequestDispatcher("jspfile/home_user.jsp").forward(req, res);
        } catch (SQLException ex) {
            Logger.getLogger(Del_package.class.getName()).log(Level.SEVERE, null, ex);
        }
              
    }

 
}
