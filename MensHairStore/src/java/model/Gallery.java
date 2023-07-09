/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author DELL
 */
public class Gallery {
    private int gallery_id;
    private int product_id;
    private String thumbnail;

    public Gallery() {
    }

    public Gallery(int gallery_id, int product_id, String thumbnail) {
        this.gallery_id = gallery_id;
        this.product_id = product_id;
        this.thumbnail = thumbnail;
    }

    public int getGallery_id() {
        return gallery_id;
    }

    public void setGallery_id(int gallery_id) {
        this.gallery_id = gallery_id;
    }

    public int getProduct_id() {
        return product_id;
    }

    public void setProduct_id(int product_id) {
        this.product_id = product_id;
    }

    public String getThumbnail() {
        return thumbnail;
    }

    public void setThumbnail(String thumbnail) {
        this.thumbnail = thumbnail;
    }

    @Override
    public String toString() {
        return "Gallery{" + "gallery_id=" + gallery_id + ", product_id=" + product_id + ", thumbnail=" + thumbnail + '}';
    }
    
}
