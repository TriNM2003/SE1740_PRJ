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
public class Product {
    private int product_id;
    private String product_name;
    private int category_id;
    private int brand_id;
    private float price;
    private java.sql.Date create_time;
    private java.sql.Date update_time;
    private String thumbnail;
    int discount;
    int status;

    public Product() {
    }

    public Product(int product_id, String product_name, int category_id, int brand_id, float price, Date create_time, Date update_time, String thumbnail, int discount, int status) {
        this.product_id = product_id;
        this.product_name = product_name;
        this.category_id = category_id;
        this.brand_id = brand_id;
        this.price = price;
        this.create_time = create_time;
        this.update_time = update_time;
        this.thumbnail = thumbnail;
        this.discount = discount;
        this.status = status;
    }

    public int getDiscount() {
        return discount;
    }

    public void setDiscount(int discount) {
        this.discount = discount;
    }



    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    
    

    public int getProduct_id() {
        return product_id;
    }

    public void setProduct_id(int product_id) {
        this.product_id = product_id;
    }

    public String getProduct_name() {
        return product_name;
    }

    public void setProduct_name(String product_name) {
        this.product_name = product_name;
    }

    public int getCategory_id() {
        return category_id;
    }

    public void setCategory_id(int category_id) {
        this.category_id = category_id;
    }

    public int getBrand_id() {
        return brand_id;
    }

    public void setBrand_id(int brand_id) {
        this.brand_id = brand_id;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
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

    public String getThumbnail() {
        return thumbnail;
    }

    public void setThumbnail(String thumbnail) {
        this.thumbnail = thumbnail;
    }

    @Override
    public String toString() {
        return "Product{" + "product_id=" + product_id + ", product_name=" + product_name + ", category_id=" + category_id + ", brand_id=" + brand_id + ", price=" + price + ", create_time=" + create_time + ", update_time=" + update_time + ", thumbnail=" + thumbnail + ", discount=" + discount + ", status=" + status + '}';
    }

  

   
    
    
    
}
