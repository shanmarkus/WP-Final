/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Objects;

import java.io.Serializable;

/**
 *
 * @author
 * Jason
 */
public class Product implements Serializable {

    private String productID;
    private String name;
    private String description;
    private Integer stock;
    private Integer price;
    private String pictureURL;

    public Product(String productID, String name, String description, Integer stock, Integer price, String pictureURL) {
        this.productID = productID;
        this.name = name;
        this.description = description;
        this.stock = stock;
        this.price = price;
        this.pictureURL = pictureURL;
    }

    public String getProductID() {
        return productID;
    }

    public void setProductID(String productID) {
        this.productID = productID;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Integer getStock() {
        return stock;
    }

    public void setStock(Integer stock) {
        this.stock = stock;
    }

    public Integer getPrice() {
        return price;
    }

    public void setPrice(Integer price) {
        this.price = price;
    }

    public String getPictureURL() {
        return pictureURL;
    }

    public void setPictureURL(String pictureURL) {
        this.pictureURL = pictureURL;
    }
}