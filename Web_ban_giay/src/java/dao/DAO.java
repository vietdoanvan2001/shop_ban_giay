/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import context.DbContext;
import entity.Account;
import entity.Category;
import entity.Contact;
import entity.DonHang;
import entity.Product;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.*;
import java.sql.*;
/**
 *
 * @author dell
 */
public class DAO {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    
    public List<Product> getAllProduct(){
        List<Product> listP = new ArrayList<>();
        String sql = "select * from product";
        try {
            conn = new DbContext().connextDB();
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()){
                listP.add(new Product(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4), rs.getInt(5), rs.getString(6), rs.getString(7)));
            }
        } catch (Exception e) {
        }
        return listP;
    }
    public List<Category> getAllCategory(){
        List<Category> listCat = new ArrayList<>();
        String sql = "select * from Category";
        try {
            conn = new DbContext().connextDB();
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()){
                listCat.add(new Category(rs.getInt(1), rs.getString(2)));
            }
        } catch (Exception e) {
        }
        return listCat;
    }
    public List<Product> getProductByCID(String cid){
        List<Product> listP = new ArrayList<>();
        String sql = "select * from product where cateID = ?";
        try {
            conn = new DbContext().connextDB();
            ps = conn.prepareStatement(sql);
            ps.setString(1, cid);
            rs = ps.executeQuery();
            while(rs.next()){
                listP.add(new Product(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4), rs.getInt(5), rs.getString(6), rs.getString(7)));
            }
        } catch (Exception e) {
        }
        return listP;
    }
    public Product getProductByID(String id){
        List<Product> listP = new ArrayList<>();
        String sql = "select * from product where id = ?";
        try {
            conn = new DbContext().connextDB();
            ps = conn.prepareStatement(sql);
            ps.setString(1, id);
            rs = ps.executeQuery();
            while(rs.next()){
                return new Product(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4), rs.getInt(5), rs.getString(6), rs.getString(7));
            }
        } catch (Exception e) {
        }
        return null;
    }
    public List<Product> SearchByName(String txtName){
        List<Product> listP = new ArrayList<>();
        String sql = "select * from product where [name] like ?";
        try {
            conn = new DbContext().connextDB();
            ps = conn.prepareStatement(sql);
            ps.setString(1, "%"+txtName+"%");
            rs = ps.executeQuery();
            while(rs.next()){
                listP.add(new Product(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4), rs.getInt(5), rs.getString(6), rs.getString(7)));
            }
        } catch (Exception e) {
        }
        return listP;
    }
    public Account Login(String user, String pass){
        String sql = "select * from Account where [user] = ? and [pass] = ?";
        try {
            conn = new DbContext().connextDB();
            ps = conn.prepareStatement(sql);
            ps.setString(1, user);
            ps.setString(2, pass);
            rs = ps.executeQuery();
            while(rs.next()){
                return new Account(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4), rs.getInt(5));
            }
        } catch (Exception e) {
        }
        return null;
    }
    public Account CheckAccount(String user){
        String sql = "select * from Account where [user] = ?";
        try {
            conn = new DbContext().connextDB();
            ps = conn.prepareStatement(sql);
            ps.setString(1, user);
            rs = ps.executeQuery();
            while(rs.next()){
                return new Account(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4), rs.getInt(5));
            }
        } catch (Exception e) {
        }
        return null;
    }
    public void Register(String user, String pass){
        String sql = "insert into Account values(?,?,0,0,null,null,null,null,null)";
        try {
            conn = new DbContext().connextDB();
            ps = conn.prepareStatement(sql);
            ps.setString(1, user);
            ps.setString(2, pass);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
    public List<Product> getProductBySellID(int id){
        List<Product> listP = new ArrayList<>();
        String sql = "select * from product where sell_ID = ?";
        try {
            conn = new DbContext().connextDB();
            ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while(rs.next()){
                listP.add(new Product(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4), rs.getInt(5), rs.getString(6), rs.getString(7)));
            }
        } catch (Exception e) {
        }
        return listP;
    }
    public void DeleteProduct(String pid){
        String sql = "delete from product where id = ?";
        try {
            conn = new DbContext().connextDB();
            ps = conn.prepareStatement(sql);
            ps.setString(1, pid);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
    public void AddProduct(String name, String image, String priceOld, String priceNew, String title, String des, String cateID, int sell_ID){
        String sql = "insert into product values(?,?,?,?,?,?,?,?)";
        try {
            conn = new DbContext().connextDB();
            ps = conn.prepareStatement(sql);
            ps.setString(1, name);
            ps.setString(2, image);
            ps.setString(3, priceOld);
            ps.setString(4, priceNew);
            ps.setString(5, title);
            ps.setString(6, des);
            ps.setString(7, cateID);
            ps.setInt(8, sell_ID);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
    public void EditProduct(String name, String image, String priceNew, String title, String des, String pid){
        String sql = "update product set [name]=?,[image] =?, priceNew=?, title=?,description=? where id=?";
        try {
            conn = new DbContext().connextDB();
            ps = conn.prepareStatement(sql);
            ps.setString(1, name);
            ps.setString(2, image);
            ps.setString(3, priceNew);
            ps.setString(4, title);
            ps.setString(5, des);
            ps.setString(6, pid);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
    public void Contact(String name, String email, String phone, String msg){
        String sql = "insert into Contact values(?,?,?,?)";
        try {
            conn = new DbContext().connextDB();
            ps = conn.prepareStatement(sql);
            ps.setString(1, name);
            ps.setString(2, email);
            ps.setString(3, phone);
            ps.setString(4, msg);
            
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
    
    public List<Contact> getAllContact(){
        List<Contact> listC = new ArrayList<>();
        String sql = "select * from Contact";
        try {
            conn = new DbContext().connextDB();
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()){
                listC.add(new Contact(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4),rs.getString(5)));
            }
        } catch (Exception e) {
        }
        return listC;
    }
    public void DeleteContact(String ctid){
        String sql = "delete from Contact where id = ?";
        try {
            conn = new DbContext().connextDB();
            ps = conn.prepareStatement(sql);
            ps.setString(1, ctid);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
    public void ChangePassWord(String pass, int pid){
        String sql = "update Account set pass = ? where uID=?";
        try {
            conn = new DbContext().connextDB();
            ps = conn.prepareStatement(sql);
            ps.setString(1, pass);
            ps.setInt(2, pid);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
        public int getTotalProduct(){
        int count = 0;
        String sql = "select * from product";
        try {
            conn = new DbContext().connextDB();
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()){
                count+=1;
            }
        } catch (Exception e) {
        }
        return count;
    }
    public ArrayList<DonHang> getDon(){
            ArrayList<DonHang> list = new ArrayList<>();
            String query = "select * from dbo.HoaDon";
            try {
                conn = new DbContext().connextDB();
                ps = conn.prepareStatement(query);
                rs = ps.executeQuery();
                while(rs.next()){
                    list.add(new DonHang(rs.getInt(1),rs.getString(2),rs.getInt(3),rs.getInt(4)));
                }
            } catch (Exception e) {
            }
            return list;
        }
    public ArrayList<DonHang> getXacNhan(){
            ArrayList<DonHang> list = new ArrayList<>();
            String query = "select * from dbo.XacNhanDon";
            try {
                conn = new DbContext().connextDB();
                ps = conn.prepareStatement(query);
                rs = ps.executeQuery();
                while(rs.next()){
                    list.add(new DonHang(rs.getInt(1),rs.getString(2),rs.getInt(3),rs.getInt(4)));
                }
            } catch (Exception e) {
            }
            return list;
        }
    public List<Account> getAllAccount(){
        List<Account> listA = new ArrayList<>();
        String sql = "select * from Account";
        try {
            conn = new DbContext().connextDB();
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()){
                listA.add(new Account(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4), rs.getInt(5)));
            }
        } catch (Exception e) {
        }
        return listA;
    }
    public void DeleteAccount(String aid){
        String sql = "delete from Account where uID = ?";
        try {
            conn = new DbContext().connextDB();
            ps = conn.prepareStatement(sql);
            ps.setString(1, aid);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
    public void UpdateAccount(int isSell, int isAdmin, int aid){
        String sql = "update Account set isSell = ?, isAdmin=? where uID=?";
        try {
            conn = new DbContext().connextDB();
            ps = conn.prepareStatement(sql);
            ps.setInt(1, isSell);
            ps.setInt(2, isAdmin);
            ps.setInt(3, aid);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
    public Account getAccountByID(int id){
        String sql = "select * from Account where [uID] = ?";
        try {
            conn = new DbContext().connextDB();
            ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while(rs.next()){
                return new Account(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4), rs.getInt(5));
            }
        } catch (Exception e) {
        }
        return null;
    }
    public ArrayList<Account> getInfor(String id){
            ArrayList<Account> list = new ArrayList<>();
            String query = "select * from dbo.Account where uID=?";
            try {
                conn = new DbContext().connextDB();
                ps = conn.prepareStatement(query);
                ps.setString(1, id);
                rs = ps.executeQuery();
                while(rs.next()){
                    list.add(new Account(rs.getString(6),rs.getString(7),rs.getString(9),rs.getString(8),rs.getString(10)));
                }
            } catch (Exception e) {
            }
            return list;
        }
    public void fixInfor(String Name, String Phone, String Email,String Address, String Gt,int id){
            String query = "update dbo.Account set Name=?,Phone=?,Email=?,Address=?,Gt=? where uID=?";
            try {
                conn = new DbContext().connextDB();
                ps = conn.prepareStatement(query);
                ps.setString(1, Name);
                ps.setString(2, Phone);
                ps.setString(4, Email);
                ps.setString(3, Address);
                ps.setString(5, Gt);
                ps.setInt(6, id);
                ps.executeUpdate();
            } catch (Exception e) {
            }
        }
}
