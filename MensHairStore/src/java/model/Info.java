/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author DELL
 */
public class Info {
    private int info_id;
    private int capacity;
    private String fragrance;
    private String title;
    private String des1;
    private String manual;

    public Info() {
    }

    public Info(int info_id, int capacity, String fragrance, String title, String des1, String manual) {
        this.info_id = info_id;
        this.capacity = capacity;
        this.fragrance = fragrance;
        this.title = title;
        this.des1 = des1;
        this.manual = manual;
    }

    public int getInfo_id() {
        return info_id;
    }

    public void setInfo_id(int info_id) {
        this.info_id = info_id;
    }

    public int getCapacity() {
        return capacity;
    }

    public void setCapacity(int capacity) {
        this.capacity = capacity;
    }

    public String getFragrance() {
        return fragrance;
    }

    public void setFragrance(String fragrance) {
        this.fragrance = fragrance;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDes1() {
        return des1;
    }

    public void setDes1(String des1) {
        this.des1 = des1;
    }

    public String getManual() {
        return manual;
    }

    public void setManual(String manual) {
        this.manual = manual;
    }

    @Override
    public String toString() {
        return "Info{" + "info_id=" + info_id + ", capacity=" + capacity + ", fragrance=" + fragrance + ", title=" + title + ", des1=" + des1 + ", manual=" + manual + '}';
    }
    
}
