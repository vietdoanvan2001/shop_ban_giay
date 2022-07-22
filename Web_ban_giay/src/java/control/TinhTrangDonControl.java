/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control;

import dao.DAO;
import dao.GioHangDAO;
import dao.HoaDonDAO;
import entity.Category;
import entity.HoaDon;
import entity.Product;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.*;
/**
 *
 * @author dell
 */
@WebServlet(name = "TinhTrangDon", urlPatterns = {"/TinhTrangDon"})
public class TinhTrangDonControl extends HttpServlet {

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
        String User= request.getParameter("user");
        
        HoaDonDAO dao = new HoaDonDAO(); 
        List<HoaDon> listHD = dao.getHoaDonByUser(User);
        List<HoaDon> listXN = dao.getXacNhanByUser(User);
        int HD = listHD.size();
        int XN = listXN.size();
        
        String chose = request.getParameter("chose");
        int title;
        if(chose==null){
            title = 0;
        }else{
            title = Integer.parseInt(chose);
        }
        
        request.setAttribute("HD", HD);
        request.setAttribute("XN", XN);
        request.setAttribute("listHD", listHD);
        request.setAttribute("listXN", listXN);
        request.setAttribute("title", title);
        request.getRequestDispatcher("xemTinhTrangDon.jsp").forward(request, response);
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
