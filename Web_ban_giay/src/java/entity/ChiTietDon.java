/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

/**
 *
 * @author Than Dep Zai
 */
public class ChiTietDon {
    private int order_id;
    private String user,name_user,address,phone,img,name_shoes;
    private int amount,total;

    public ChiTietDon(int order_id, String user, String name_user, String address, String phone, String img, String name_shoes, int amount, int total) {
        this.order_id = order_id;
        this.user = user;
        this.name_user = name_user;
        this.address = address;
        this.phone = phone;
        this.img = img;
        this.name_shoes = name_shoes;
        this.amount = amount;
        this.total = total;
    }

    public ChiTietDon() {
    }
    public int getOrder_id() {
        return order_id;
    }

    public void setOrder_id(int order_id) {
        this.order_id = order_id;
    }

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public String getName_user() {
        return name_user;
    }

    public void setName_user(String name_user) {
        this.name_user = name_user;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public String getName_shoes() {
        return name_shoes;
    }

    public void setName_shoes(String name_shoes) {
        this.name_shoes = name_shoes;
    }

    public int getAmount() {
        return amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }

    public int getTotal() {
        return total;
    }

    public void setTotal(int total) {
        this.total = total;
    }

    
}
