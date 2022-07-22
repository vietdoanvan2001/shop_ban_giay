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
@WebServlet(name = "ThanhToan", urlPatterns = {"/ThanhToan"})
public class ThanhToan extends HttpServlet{
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter printWriter = response.getWriter();
        request.setCharacterEncoding("UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            String userName = request.getParameter("user");
            int amount = Integer.parseInt(request.getParameter("amount")); 
            int total = Integer.parseInt(request.getParameter("total"));
            String name = request.getParameter("name");
            String phone = request.getParameter("phone");
            String address = request.getParameter("address");
            double randomDouble = Math.random();
            randomDouble = randomDouble * 100 + 1000;
            int oder_id = (int) randomDouble;
            ArrayList<HoaDon> list = new HoaDonDAO().getHoaDon(userName, oder_id);
            while(!list.isEmpty()){
                randomDouble = randomDouble * 100 + 1000;
                oder_id = (int) randomDouble;
                list = new HoaDonDAO().getHoaDon(userName, oder_id);
            }
            HoaDonDAO a = new HoaDonDAO();
            a.AddHoaDon(oder_id, userName, amount, total);
            ArrayList<GioHang> list_shoes = new GioHangDAO().getAllProduct(userName);
            GioHangDAO del = new GioHangDAO();
            for(GioHang i:list_shoes){
                a.AddChiTiet(oder_id, userName, name, address,phone, i.getImg(), i.getName(), i.getAmount(), i.getTotal());
                del.Remove(i.getId(), userName);
            }
            
            response.sendRedirect("donHang.jsp?user="+userName+"&order="+oder_id);
        }
        catch(Exception e){
        }
    }
}
