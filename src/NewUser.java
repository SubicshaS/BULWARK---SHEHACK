/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author ISI
 */
@WebServlet(urlPatterns = {"/NewUser"})
public class NewUser extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        HttpSession session = request.getSession();
        String fname = request.getParameter("fname");
        String username = request.getParameter("uname");
        String password = request.getParameter("pwd");
        String gender = request.getParameter("gender");
        String address = request.getParameter("addr");
        String city= request.getParameter("dist");
        String state = request.getParameter("state");
        String nation = request.getParameter("country");
        String email = request.getParameter("email");
       
       Random rand = new Random();
             int  n = rand.nextInt(9999) + 1;
             int n1=rand.nextInt(99)+1;
             int n2=rand.nextInt(99999999)+1;
                 String idTemp=(String.valueOf(n));
                  String idTemp1=(String.valueOf(n1));
                  String idTemp3=(String.valueOf(n2));
                 int rid=n;
                 String pin =idTemp;
                 String otp=idTemp1;
                  String accno =idTemp3;
                 double amount=0;
session.setAttribute("name",username);

        try {

   
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/ebank", "root", "root");
  
            String sql = "insert into info values('"+fname+"','"+username+"','"+password+"','"+gender+"','"+address+"','"+city+"','"+state+"','"+nation+"','"+accno+"','"+amount+"','"+otp+"','"+email+"')";
                 PreparedStatement ps = con.prepareStatement(sql);
               ps.executeUpdate();
                String sql1 = "insert into deposit values('"+fname+"','"+username+"','"+pin+"')";
                 PreparedStatement ps1 = con.prepareStatement(sql1);
               ps1.executeUpdate();
               
                con.close();
                ps.close();     ps1.close();
            request.setAttribute("msg1", "Registered Successfully! Account number: "+accno+" "+"and OTP : "+otp+"");
            
            String sub="PIN Number";
            String Message="PIN number: "+pin+" "+"and OTP : "+otp+"";
            Mailer.send(email, sub, Message);
                RequestDispatcher rd = request.getRequestDispatcher("register.jsp");
                

                rd.forward(request, response);

           
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println(e);
        } finally {
            out.close();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
