/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.sql.Date;

/**
 *
 * @author DELL
 */
public class Order {
    private int order_id;
    private int user_id;
    private String fullname;
    private String address;
    private String gmail;
    private String phone_number;
    private String note;
    private Date order_date;
    private int status;
    private float total_money;

    public Order() {
    }

    public Order(int order_id, int user_id, String fullname, String address, String gmail, String phone_number, String note, Date order_date, int status, float total_money) {
        this.order_id = order_id;
        this.user_id = user_id;
        this.fullname = fullname;
        this.address = address;
        this.gmail = gmail;
        this.phone_number = phone_number;
        this.note = note;
        this.order_date = order_date;
        this.status = status;
        this.total_money = total_money;
    }

    public int getOrder_id() {
        return order_id;
    }

    public void setOrder_id(int order_id) {
        this.order_id = order_id;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public String getFullname() {
        return fullname;
    }

    public void setFullname(String fullname) {
        this.fullname = fullname;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getGmail() {
        return gmail;
    }

    public void setGmail(String gmail) {
        this.gmail = gmail;
    }

    public String getPhone_number() {
        return phone_number;
    }

    public void setPhone_number(String phone_number) {
        this.phone_number = phone_number;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }

    public Date getOrder_date() {
        return order_date;
    }

    public void setOrder_date(Date order_date) {
        this.order_date = order_date;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public float getTotal_money() {
        return total_money;
    }

    public void setTotal_money(float total_money) {
        this.total_money = total_money;
    }

    @Override
    public String toString() {
        return "Order{" + "order_id=" + order_id + ", user_id=" + user_id + ", fullname=" + fullname + ", address=" + address + ", gmail=" + gmail + ", phone_number=" + phone_number + ", note=" + note + ", order_date=" + order_date + ", status=" + status + ", total_money=" + total_money + '}';
    }
    
    
}
