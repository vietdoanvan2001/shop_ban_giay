/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control;
import context.DbContext;
import dao.GioHangDAO;
import dao.HoaDonDAO;
import entity.GioHang;
import entity.HoaDon;
import entity.Product;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
/**
 *
 * @author Than Dep Zai
 */
@WebServlet(name = "QuanLyHoaDon", urlPatterns = {"/QuanLyHoaDon"})
public class QuanLyHoaDon extends HttpServlet{
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter printWriter = response.getWriter();
        request.setCharacterEncoding("UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            String userName = request.getParameter("user");
            int oder = Integer.parseInt(request.getParameter("order"));
            int method = Integer.parseInt(request.getParameter("method"));
            int amount = Integer.parseInt(request.getParameter("amount")); 
            int total = Integer.parseInt(request.getParameter("total"));

            if(method==1){
                HoaDonDAO a = new HoaDonDAO();
                a.AddXacNhan(oder, userName,amount,total);
                a.deleteHoaDon(oder, userName);
                response.sendRedirect("QLXacNhan.jsp");
            }else if(method==0){
                HoaDonDAO a = new HoaDonDAO();
                a.Remove(oder, userName);
                response.sendRedirect("QLHoaDon.jsp");
            }else if(method==2){
                HoaDonDAO a = new HoaDonDAO();
                a.Remove(oder, userName);
                response.sendRedirect("QLXacNhan.jsp");
            }
            
            
            
        }
        catch(Exception e){
        }
    }
}
