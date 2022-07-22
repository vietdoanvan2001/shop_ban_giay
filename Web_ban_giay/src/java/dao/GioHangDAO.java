/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import com.microsoft.sqlserver.jdbc.SQLServerDataSource;
import context.DbContext;
import entity.Account;
import entity.GioHang;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.*;
/**
 *
 * @author Than Dep Zai
 */
public class GioHangDAO {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    public void Add(String UserName,int ID, String Img, String Name, int Price, int amount, int total){
        try {
            String sql = "insert into dbo.GioHang values(?,?,?,?,?,?,?)";
            conn = new DbContext().connextDB();
            ps = conn.prepareStatement(sql);
            ps.setString(1, UserName);
            ps.setInt(2, ID);
            ps.setString(3,Img);
            ps.setString(4,Name);
            ps.setInt(5, Price);
            ps.setInt(6, amount);
            ps.setInt(7, total);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
    public ArrayList<GioHang> getProduct(String User,int ID){
            String query = "select * from dbo.GioHang where id=? AND username=?";
            ArrayList<GioHang> list = new ArrayList<>();
            try {
                conn = new DbContext().connextDB();
                ps = conn.prepareStatement(query);
                ps.setInt(1, ID);
                ps.setString(2,User);
                rs = ps.executeQuery();
                while(rs.next()){
                list.add(new GioHang(rs.getString(1),rs.getInt(2),rs.getString(3),rs.getString(4),rs.getInt(5),rs.getInt(6),rs.getInt(7)));
                }
            } catch (Exception e) {
            }
            return list;
    }
    public ArrayList<GioHang> getAllProduct(String User){
            String query = "select * from dbo.GioHang where username=?";
            ArrayList<GioHang> list = new ArrayList<>();
            try {
                conn = new DbContext().connextDB();
                ps = conn.prepareStatement(query);
                ps.setString(1,User);
                rs = ps.executeQuery();
                while(rs.next()){
                list.add(new GioHang(rs.getString(1),rs.getInt(2),rs.getString(3),rs.getString(4),rs.getInt(5),rs.getInt(6),rs.getInt(7)));
                }
            } catch (Exception e) {
            }
            return list;
    }
    public void Fix(String UserName,int ID,int amount, int total){
        try {
            String sql = "update dbo.GioHang set amount=?, total=? where id=? AND username=?";
            conn = new DbContext().connextDB();
            ps = conn.prepareStatement(sql);
            ps.setInt(1, amount);
            ps.setInt(2, total);
            ps.setInt(3, ID);
            ps.setString(4, UserName);           
            int rs = ps.executeUpdate();
        } catch (Exception e) {
            System.out.println("loi");
        }
    }
    public void Remove(int ID, String UserName){
        try {
            String sql = "delete dbo.GioHang where id = ? AND username=?";
            conn = new DbContext().connextDB();
            ps = conn.prepareStatement(sql);
            ps.setInt(1, ID);
            ps.setString(2, UserName);
            int rs = ps.executeUpdate();
        } catch (Exception e) {
        }
    }
}
