/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dto;

import java.sql.Date;

/**
 *
 * @author bacda
 */
public class FieldDTO {
    private String fieldID;
    private String fieldName;
    private String decription;
    private String location;
    private String imageURL;
    private String amentities;
    private Date createdAt;
    private Date updateAt;
    private double price;
    private int rating;
    private String fieldSize;
    public FieldDTO() {
    }

    public FieldDTO(String fieldID, String fieldName, String decription, String location, String imageURL, String amentities, Date createdAt, Date updateAt, double price, int rating, String fieldSize) {
        this.fieldID = fieldID;
        this.fieldName = fieldName;
        this.decription = decription;
        this.location = location;
        this.imageURL = imageURL;
        this.amentities = amentities;
        this.createdAt = createdAt;
        this.updateAt = updateAt;
        this.price = price;
        this.rating = rating;
        this.fieldSize = fieldSize;
    }

    public String getFieldSize() {
        return fieldSize;
    }

    public void setFieldSize(String fieldSize) {
        this.fieldSize = fieldSize;
    }

    
    

    
    
    public String getFieldID() {
        return fieldID;
    }

    public void setFieldID(String FieldID) {
        this.fieldID = FieldID;
    }

    

    public String getFieldName() {
        return fieldName;
    }

    public void setFieldName(String fieldName) {
        this.fieldName = fieldName;
    }

    public String getDecription() {
        return decription;
    }

    public void setDecription(String decription) {
        this.decription = decription;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public String getImageURL() {
        return imageURL;
    }

    public void setImageURL(String imageURL) {
        this.imageURL = imageURL;
    }

    public String getAmentities() {
        return amentities;
    }

    public void setAmentities(String amentities) {
        this.amentities = amentities;
    }

    public Date getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(Date createdAt) {
        this.createdAt = createdAt;
    }

    public Date getUpdateAt() {
        return updateAt;
    }

    public void setUpdateAt(Date updateAt) {
        this.updateAt = updateAt;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public int getRating() {
        return rating;
    }

    public void setRating(int rating) {
        this.rating = rating;
    }

    @Override
    public String toString() {
        return "FieldDTO{" + "fieldID=" + fieldID + ", fieldName=" + fieldName + ", decription=" + decription + ", location=" + location + ", imageURL=" + imageURL + ", amentities=" + amentities + ", createdAt=" + createdAt + ", updateAt=" + updateAt + ", price=" + price + ", rating=" + rating + ", fieldSize=" + fieldSize + '}';
    }

    

    

    
    
    
}
