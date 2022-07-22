/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import com.microsoft.sqlserver.jdbc.SQLServerDataSource;
import context.DbContext;
import entity.ChiTietDon;
import entity.HoaDon;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.*;
/**
 *
 * @author Than Dep Zai
 */
public class HoaDonDAO {
   Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    public void AddChiTiet(int oder_id,String userName,String nameUser, String address, String phone, String img, String nameShoe, int amount,int total){
        try {
            String sql = "insert into dbo.ChiTietDon values(?,?,?,?,?,?,?,?,?)";
            conn = new DbContext().connextDB();
            ps = conn.prepareStatement(sql);
            ps.setInt(1, oder_id);
            ps.setString(2, userName);
            ps.setString(3, nameUser);
            ps.setString(4, address);
            ps.setString(5, phone);
            ps.setString(6, img);
            ps.setString(7, nameShoe);
            ps.setInt(8,amount);
            ps.setInt(9, total);
            int rs = ps.executeUpdate();
        } catch (Exception e) {
        }
    }
    public ArrayList<ChiTietDon> getChiTiet(String User,int oder_id){
            String query = "select * from dbo.ChiTietDon where oder_id=? AND username=?";
            ArrayList<ChiTietDon> list = new ArrayList<>();
            try {
                conn = new DbContext().connextDB();
                ps = conn.prepareStatement(query);
                ps.setInt(1, oder_id);
                ps.setString(2,User);
                rs = ps.executeQuery();
                while(rs.next()){
                list.add(new ChiTietDon(rs.getInt(1), rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6),rs.getString(7),rs.getInt(8),rs.getInt(9)));
                }
            } catch (Exception e) {
            }
            return list;
    }
    public void AddHoaDon(int oder_id,String userName, int amount, int total){
        try {
            String sql = "insert into dbo.HoaDon values(?,?,?,?)";
            conn = new DbContext().connextDB();
            ps = conn.prepareStatement(sql);
            ps.setInt(1, oder_id);
            ps.setString(2,userName);
            ps.setInt(3,amount);
            ps.setInt(4, total);
            int rs = ps.executeUpdate();
        } catch (Exception e) {
        }
    }
    public ArrayList<HoaDon> getHoaDon(String User,int oder_id){
            String query = "select * from dbo.HoaDon where order_id=? AND username=?";
            ArrayList<HoaDon> list = new ArrayList<>();
            try {
                conn = new DbContext().connextDB();
                ps = conn.prepareStatement(query);
                ps.setInt(1, oder_id);
                ps.setString(2,User);
                rs = ps.executeQuery();
                while(rs.next()){
                list.add(new HoaDon(rs.getInt(1), rs.getString(2),rs.getInt(3),rs.getInt(4)));
                }
            } catch (Exception e) {
            }
            return list;
    }
    public void deleteHoaDon(int oder_id, String UserName){
        try{
            String sql = "delete dbo.HoaDon where order_id = ? AND username=?";
            conn = new DbContext().connextDB();
            ps = conn.prepareStatement(sql);
            ps.setInt(1, oder_id);
            ps.setString(2, UserName);
            int rs = ps.executeUpdate();
        }catch(Exception e){
        }
    }
    public void AddXacNhan(int oder_id,String userName, int amount, int total){
        try {
            String sql = "insert into dbo.XacNhanDon values(?,?,?,?)";
            conn = new DbContext().connextDB();
            ps = conn.prepareStatement(sql);
            ps.setInt(1, oder_id);
            ps.setString(2,userName);
            ps.setInt(3,amount);
            ps.setInt(4, total);
            int rs = ps.executeUpdate();
        } catch (Exception e) {
        }
    }
    public ArrayList<HoaDon> getXacNhan(String User,int oder_id){
            String query = "select * from dbo.XacNhanDon where order_id=? AND username=?";
            ArrayList<HoaDon> list = new ArrayList<>();
            try {
                conn = new DbContext().connextDB();
                ps = conn.prepareStatement(query);
                ps.setInt(1, oder_id);
                ps.setString(2,User);
                rs = ps.executeQuery();
                while(rs.next()){
                list.add(new HoaDon(rs.getInt(1), rs.getString(2),rs.getInt(3),rs.getInt(4)));
                }
            } catch (Exception e) {
            }
            return list;
    }
    public void deleteXanNhan(int oder_id, String UserName){
        try{
            String sql = "delete dbo.XacNhanDon where id = ? AND username=?";
            conn = new DbContext().connextDB();
            ps = conn.prepareStatement(sql);
            ps.setInt(1, oder_id);
            ps.setString(2, UserName);
            int rs = ps.executeUpdate();
        }catch(Exception e){
        }
    }
    public void Remove(int oder_id, String UserName){
        try {
            String sql = "delete dbo.HoaDon where order_id = ? AND username=?";
            conn = new DbContext().connextDB();
            ps = conn.prepareStatement(sql);
            ps.setInt(1, oder_id);
            ps.setString(2, UserName);
            int rs = ps.executeUpdate();
            sql = "delete dbo.ChiTietDon where oder_id = ? AND username=?";
            conn = new DbContext().connextDB();
            ps = conn.prepareStatement(sql);
            ps.setInt(1, oder_id);
            ps.setString(2, UserName);
            rs = ps.executeUpdate();
            sql = "delete dbo.XacNhanDon where order_id = ? AND username=?";
            conn = new DbContext().connextDB();
            ps = conn.prepareStatement(sql);
            ps.setInt(1, oder_id);
            ps.setString(2, UserName);
            rs = ps.executeUpdate();
        } catch (Exception e) {
        }
    }
    public ArrayList<HoaDon> getHoaDonByUser(String User){
            String query = "select * from dbo.HoaDon where username=?";
            ArrayList<HoaDon> list = new ArrayList<>();
            try {
                conn = new DbContext().connextDB();
                ps = conn.prepareStatement(query);
                ps.setString(1,User);
                rs = ps.executeQuery();
                while(rs.next()){
                list.add(new HoaDon(rs.getInt(1), rs.getString(2),rs.getInt(3),rs.getInt(4)));
                }
            } catch (Exception e) {
            }
            return list;
    }
        public ArrayList<HoaDon> getXacNhanByUser(String User){
            String query = "select * from dbo.XacNhanDon where username=?";
            ArrayList<HoaDon> list = new ArrayList<>();
            try {
                conn = new DbContext().connextDB();
                ps = conn.prepareStatement(query);
                ps.setString(1,User);
                rs = ps.executeQuery();
                while(rs.next()){
                list.add(new HoaDon(rs.getInt(1), rs.getString(2),rs.getInt(3),rs.getInt(4)));
                }
            } catch (Exception e) {
            }
            return list;
    }
}
