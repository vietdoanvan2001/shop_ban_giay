/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control;
import context.DbContext;
import dao.GioHangDAO;
import entity.GioHang;
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
@WebServlet(name = "SuaGioHang", urlPatterns = {"/SuaGioHang"})
public class SuaGioHang extends HttpServlet{
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter printWriter = response.getWriter();
        try ( PrintWriter out = response.getWriter()) {
            String userName = request.getParameter("user");
            int id = Integer.parseInt(request.getParameter("id"));
            int price = Integer.parseInt(request.getParameter("price"));
            int type = Integer.parseInt(request.getParameter("type")); 
            if(type==1){
                int amount = Integer.parseInt(request.getParameter("amount"));
                if(amount<=0){
                    GioHangDAO a = new GioHangDAO();
                    a.Remove(id, userName);
                }else{
                    int total = price*amount;
                    GioHangDAO a = new GioHangDAO();
                    a.Fix(userName, id, amount, total);   
                }
                out.print("<script> alert('Đổi Thành Công')</script>");
            }
            else{
                GioHangDAO a = new GioHangDAO();
                a.Remove(id, userName);
            }

            response.sendRedirect("gioHang.jsp?user="+userName);  
        }
        catch(Exception e){
        }
    }
}
