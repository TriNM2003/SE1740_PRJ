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
public class Feedback {
    private int user_id;
    private int product_id;
    private String fullname;
    private String note;
    private int status;
    private Date create_time;
    private Date update_time;

    public Feedback() {
    }

    public Feedback(int user_id, int product_id, String fullname, String note, int status, Date create_time, Date update_time) {
        this.user_id = user_id;
        this.product_id = product_id;
        this.fullname = fullname;
        this.note = note;
        this.status = status;
        this.create_time = create_time;
        this.update_time = update_time;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public int getProduct_id() {
        return product_id;
    }

    public void setProduct_id(int product_id) {
        this.product_id = product_id;
    }

    public String getFullname() {
        return fullname;
    }

    public void setFullname(String fullname) {
        this.fullname = fullname;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public Date getCreate_time() {
        return create_time;
    }

    public void setCreate_time(Date create_time) {
        this.create_time = create_time;
    }

    public Date getUpdate_time() {
        return update_time;
    }

    public void setUpdate_time(Date update_time) {
        this.update_time = update_time;
    }

    @Override
    public String toString() {
        return "Feedback{" + "user_id=" + user_id + ", product_id=" + product_id + ", fullname=" + fullname + ", note=" + note + ", status=" + status + ", create_time=" + create_time + ", update_time=" + update_time + '}';
    }
    
    
}
