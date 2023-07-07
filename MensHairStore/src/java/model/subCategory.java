/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author DELL
 */
public class subCategory {
    private int subCategory_id;
    private int category_id;
    private String subCategory_name;

    public subCategory(int subCategory_id, int category_id, String subCategory_name) {
        this.subCategory_id = subCategory_id;
        this.category_id = category_id;
        this.subCategory_name = subCategory_name;
    }

    public subCategory() {
    }

    public int getSubCategory_id() {
        return subCategory_id;
    }

    public void setSubCategory_id(int subCategory_id) {
        this.subCategory_id = subCategory_id;
    }

    public int getCategory_id() {
        return category_id;
    }

    public void setCategory_id(int category_id) {
        this.category_id = category_id;
    }

    public String getSubCategory_name() {
        return subCategory_name;
    }

    public void setSubCategory_name(String subCategory_name) {
        this.subCategory_name = subCategory_name;
    }

    @Override
    public String toString() {
        return "subCategory{" + "subCategory_id=" + subCategory_id + ", category_id=" + category_id + ", subCategory_name=" + subCategory_name + '}';
    }
    
}
