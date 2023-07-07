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
public class User {
    private int user_id;
    private String fullname;
    private String address;
    private String phone_number;
    private Date create_time;
    private Date update_time;
    

    public User() {
    }

    public User(int user_id, String fullname, String address, String phone_number, Date create_time, Date update_time) {
        this.user_id = user_id;
        this.fullname = fullname;
        this.address = address;
        this.phone_number = phone_number;
        this.create_time = create_time;
        this.update_time = update_time;
        
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

    public String getPhone_number() {
        return phone_number;
    }

    public void setPhone_number(String phone_number) {
        this.phone_number = phone_number;
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
        return "User{" + "user_id=" + user_id + ", fullname=" + fullname + ", address=" + address + ", phone_number=" + phone_number + ", create_time=" + create_time + ", update_time=" + update_time + '}';
    }

    
    
}

