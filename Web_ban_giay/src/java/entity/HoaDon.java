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
public class HoaDon {
    private int order_id;
    private String user;
    private int sum_amount,sum_total;

    public HoaDon() {
    }

    public HoaDon(int order_id, String user, int sum_amount, int sum_total) {
        this.order_id = order_id;
        this.user = user;
        this.sum_amount = sum_amount;
        this.sum_total = sum_total;
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

    public int getSum_amount() {
        return sum_amount;
    }

    public void setSum_amount(int sum_amount) {
        this.sum_amount = sum_amount;
    }

    public int getSum_total() {
        return sum_total;
    }

    public void setSum_total(int sum_total) {
        this.sum_total = sum_total;
    }

   
}
