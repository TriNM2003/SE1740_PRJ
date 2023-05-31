/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author DELL
 */
public class Product {
    int id;
    String name;
    String brand;
    Float volume;

    public Product() {
    }

    public Product(int id, String name, String brand, Float volume) {
        this.id = id;
        this.name = name;
        this.brand = brand;
        this.volume = volume;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getBrand() {
        return brand;
    }

    public void setBrand(String brand) {
        this.brand = brand;
    }

    public Float getVolume() {
        return volume;
    }

    public void setVolume(Float volume) {
        this.volume = volume;
    }
    
    
}
