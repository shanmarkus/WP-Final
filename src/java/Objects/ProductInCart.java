/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Objects;

/**
 *
 * @author
 * Jason
 */
public class ProductInCart extends Product {

    private Integer amount;

    public ProductInCart(String productID, String category, String subcategory, String name, String description, Integer stock, Integer price, String pictureURL, Integer amount) {
        super(productID, category, subcategory, name, description, stock, price, pictureURL);
        this.amount = amount;
    }

    public Integer getAmount() {
        return amount;
    }

    public void setAmount(Integer amount) {
        this.amount = amount;
    }
}
