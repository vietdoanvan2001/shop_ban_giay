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
import javax.servlet.http.HttpSession;
/**
 *
 * @author Than Dep Zai
 */
@WebServlet(name = "ThemGioHang", urlPatterns = {"/ThemGioHang"})
public class ThemGioHang extends HttpServlet{
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter printWriter = response.getWriter();
        try ( PrintWriter out = response.getWriter()) {
            HttpSession session = request.getSession();
            String userName = request.getParameter("user");
            int id = Integer.parseInt(request.getParameter("id"));
            int mode = Integer.parseInt(request.getParameter("mode"));
            ArrayList<GioHang> list = new GioHangDAO().getProduct(userName, id);

            if(list.isEmpty()){
                String query = "SELECT * FROM dbo.product WHERE id = ?";
                Connection conn = null;
                PreparedStatement ps = null;
                ResultSet rs = null;
                GioHangDAO a = new GioHangDAO();
                try {
                    conn = new DbContext().connextDB();
                    ps = conn.prepareStatement(query);
                    ps.setInt(1, id);
                    rs = ps.executeQuery();
                    while(rs.next()){
                        a.Add(userName, id, rs.getString(3), rs.getString(2),rs.getInt(5), 1, rs.getInt(5));
                    }
                } catch (Exception e) {
                }   
            }else{
                for(GioHang i:list){
                    i.setAmount(i.getAmount()+1);
                    i.setTotal(i.getTotal()+i.getPrice());
                    GioHangDAO a = new GioHangDAO();
                    a.Fix(userName, id, i.getAmount(), i.getTotal());
                }
            }
            if(mode==1){
                //response.sendRedirect("detail?pid="+id);
                response.sendRedirect("Home");
            }else{
                response.sendRedirect("gioHang.jsp?user="+userName);
            }
           
        }
        catch(Exception e){
        }
    }
}
