/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author DELL
 */
public class Account {
    private int user_id;
    private String username;
    private String password;
    private String gmail;
    private int role_id;

    public Account() {
    }

    public Account(int user_id, String username, String password, String gmail, int role_id) {
        this.user_id = user_id;
        this.username = username;
        this.password = password;
        this.gmail = gmail;
        this.role_id = role_id;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getGmail() {
        return gmail;
    }

    public void setGmail(String gmail) {
        this.gmail = gmail;
    }

    public int getRole_id() {
        return role_id;
    }

    public void setRole_id(int role_id) {
        this.role_id = role_id;
    }

    @Override
    public String toString() {
        return "Account{" + "user_id=" + user_id + ", username=" + username + ", password=" + password + ", gmail=" + gmail + ", role_id=" + role_id + '}';
    }

   
    
   
}
