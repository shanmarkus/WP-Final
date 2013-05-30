/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Objects;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Jason
 */
public class DBManager {

    public Boolean checkUser(String username, String password) {
        Boolean result = false;

        try {
            // Load the driver
            Class.forName("com.mysql.jdbc.Driver").newInstance();

            // Connect to MySQL
            Connection connection = DriverManager.getConnection("jdbc:mysql://localhost/ITStore", "root", "");
            Statement statement = connection.createStatement();

            // Search for the user
            ResultSet resultSet = statement.executeQuery("SELECT * FROM users WHERE username='" + username + "' AND password='" + password + "';");
            while (resultSet.next()) {
            }

            statement.close();
            connection.close();
        } catch (SQLException | ClassNotFoundException | InstantiationException | IllegalAccessException ex) {
            Logger.getLogger(DBManager.class.getName()).log(Level.SEVERE, null, ex);
        }

        return result;
    }

    public void addUser(User user) {
        try {
            // Load the driver
            Class.forName("com.mysql.jdbc.Driver").newInstance();

            // Connect to MySQL
            Connection connection = DriverManager.getConnection("jdbc:mysql://localhost/ITStore", "root", "");
            PreparedStatement preparedStatement = connection.prepareStatement("INSERT INTO users VALUES ( ?, ?, ?, ?, ?, ? );");

            // Add new user
            preparedStatement.setString(1, user.getUserID());
            preparedStatement.setString(2, user.getRole());
            preparedStatement.setString(3, user.getUsername());
            preparedStatement.setString(4, user.getPassword());
            preparedStatement.setString(5, user.getName());
            preparedStatement.setString(6, user.getEmail());
            preparedStatement.executeUpdate();

            // Close connection to database
            preparedStatement.close();
            connection.close();
        } catch (SQLException | ClassNotFoundException | InstantiationException | IllegalAccessException ex) {
            Logger.getLogger(DBManager.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public User getUser(String userID) {
        User user = null;

        try {
            // Load the driver
            Class.forName("com.mysql.jdbc.Driver").newInstance();

            // Connect to MySQL
            Connection connection = DriverManager.getConnection("jdbc:mysql://localhost/ITStore", "root", "");
            Statement statement = connection.createStatement();

            // Search for the user
            ResultSet resultSet = statement.executeQuery("SELECT * FROM users;");
            while (resultSet.next()) {
                if (userID.equals(resultSet.getString("userID"))) {
                    String ID = resultSet.getString("userID");
                    String role = resultSet.getString("role");
                    String username = resultSet.getString("username");
                    String password = resultSet.getString("password");
                    String name = resultSet.getString("name");
                    String email = resultSet.getString("email");
                    user = new User(ID, role, username, password, name, email);

                    break;
                }
            }

            // Close connection to database
            statement.close();
            connection.close();
        } catch (SQLException | ClassNotFoundException | InstantiationException | IllegalAccessException ex) {
            Logger.getLogger(DBManager.class.getName()).log(Level.SEVERE, null, ex);
        }

        return user;
    }

    public void addProduct(Product product) {
        try {
            // Load the driver
            Class.forName("com.mysql.jdbc.Driver").newInstance();

            // Connect to MySQL
            Connection connection = DriverManager.getConnection("jdbc:mysql://localhost/ITStore", "root", "");
            PreparedStatement preparedStatement = connection.prepareStatement("INSERT INTO test VALUES ( ?, ?, ?, ?, ?, ?, ?, ?);");

            // Add new user
            preparedStatement.setString(1, product.getProductID());
            preparedStatement.setString(2, product.getCategory());
            preparedStatement.setString(3, product.getSubcategory());
            preparedStatement.setString(4, product.getName());
            preparedStatement.setString(5, product.getDescription());
            preparedStatement.setString(6, product.getStock().toString());
            preparedStatement.setString(7, product.getPrice().toString());
            preparedStatement.setString(8, product.getPictureURL());
            preparedStatement.executeUpdate();

            // Close connection to database
            preparedStatement.close();
            connection.close();
        } catch (SQLException | ClassNotFoundException | InstantiationException | IllegalAccessException ex) {
            Logger.getLogger(DBManager.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public Product getProduct(String productID) {
        Product product = null;

        try {
            // Load the driver
            Class.forName("com.mysql.jdbc.Driver").newInstance();

            // Connect to MySQL
            Connection connection = DriverManager.getConnection("jdbc:mysql://localhost/ITStore", "root", "");
            Statement statement = connection.createStatement();

            // Search for the user
            ResultSet resultSet = statement.executeQuery("SELECT * FROM test;");
            while (resultSet.next()) {
                if (productID.equals(resultSet.getString("productID"))) {
                    String ID = resultSet.getString("productID");
                    String categoryID = resultSet.getString("category");
                    String subcategoryID = resultSet.getString("subcategory");
                    String name = resultSet.getString("name");
                    String description = resultSet.getString("description");
                    Integer stock = Integer.parseInt(resultSet.getString("stock"));
                    Integer price = Integer.parseInt(resultSet.getString("price"));
                    String pictureURL = resultSet.getString("pictureURL");

                    product = new Product(ID, categoryID, subcategoryID, name, description, stock, price, pictureURL);
                    break;
                }

            }
            // Close connection to database
            statement.close();
            connection.close();
        } catch (SQLException | ClassNotFoundException | InstantiationException | IllegalAccessException ex) {
            Logger.getLogger(DBManager.class.getName()).log(Level.SEVERE, null, ex);
        }

        return product;
    }

    public ArrayList<Product> getAllProducts() {
        ArrayList<Product> products = new ArrayList<>();

        try {
            // Load the driver
            Class.forName("com.mysql.jdbc.Driver").newInstance();

            // Connect to MySQL
            Connection connection = DriverManager.getConnection("jdbc:mysql://localhost/ITStore", "root", "");
            Statement statement = connection.createStatement();

            // Search for the user
            ResultSet resultSet = statement.executeQuery("SELECT * FROM test;");
            while (resultSet.next()) {
                String ID = resultSet.getString("productID");
                String category = resultSet.getString("category");
                String subcategory = resultSet.getString("subcategory");
                String name = resultSet.getString("name");
                String description = resultSet.getString("description");
                Integer stock = Integer.parseInt(resultSet.getString("stock"));
                Integer price = Integer.parseInt(resultSet.getString("price"));
                String pictureURL = resultSet.getString("pictureURL");
                products.add(new Product(ID, category, subcategory, name, description, stock, price, pictureURL));
            }

            // Close connection to database
            statement.close();
            connection.close();
        } catch (SQLException | ClassNotFoundException | InstantiationException | IllegalAccessException ex) {
            Logger.getLogger(DBManager.class.getName()).log(Level.SEVERE, null, ex);
        }

        return products;
    }
    
    public ArrayList<Product> searchSpesificProducts(String itemdescription){
         ArrayList<Product> products = new ArrayList<>();

        try {
            // Load the driver
            Class.forName("com.mysql.jdbc.Driver").newInstance();

            // Connect to MySQL
            Connection connection = DriverManager.getConnection("jdbc:mysql://localhost/ITStore", "root", "");
            Statement statement = connection.createStatement();

            // Search for the user
            ResultSet resultSet = statement.executeQuery("SELECT * FROM test WHERE name LIKE ='" + itemdescription + ";");
            while (resultSet.next()) {
                String ID = resultSet.getString("productID");
                String tempcategory = resultSet.getString("category");
                String tempsubcategory = resultSet.getString("subcategory");
                String name = resultSet.getString("name");
                String description = resultSet.getString("description");
                Integer stock = Integer.parseInt(resultSet.getString("stock"));
                Integer price = Integer.parseInt(resultSet.getString("price"));
                String pictureURL = resultSet.getString("pictureURL");
                products.add(new Product(ID, tempcategory, tempsubcategory, name, description, stock, price, pictureURL));
            }

            // Close connection to database
            statement.close();
            connection.close();
        } catch (SQLException | ClassNotFoundException | InstantiationException | IllegalAccessException ex) {
            Logger.getLogger(DBManager.class.getName()).log(Level.SEVERE, null, ex);
        }

        return products;
    }

    public ArrayList<Product> getAllSpesificProducts(String category, String subcategory) {
        ArrayList<Product> products = new ArrayList<>();

        try {
            // Load the driver
            Class.forName("com.mysql.jdbc.Driver").newInstance();

            // Connect to MySQL
            Connection connection = DriverManager.getConnection("jdbc:mysql://localhost/ITStore", "root", "");
            Statement statement = connection.createStatement();

            // Search for the user
            ResultSet resultSet = statement.executeQuery("SELECT * FROM test WHERE category='" + category + "' AND subcategory='" + subcategory + "';");
            while (resultSet.next()) {
                String ID = resultSet.getString("productID");
                String tempcategory = resultSet.getString("category");
                String tempsubcategory = resultSet.getString("subcategory");
                String name = resultSet.getString("name");
                String description = resultSet.getString("description");
                Integer stock = Integer.parseInt(resultSet.getString("stock"));
                Integer price = Integer.parseInt(resultSet.getString("price"));
                String pictureURL = resultSet.getString("pictureURL");
                products.add(new Product(ID, tempcategory, tempsubcategory, name, description, stock, price, pictureURL));
            }

            // Close connection to database
            statement.close();
            connection.close();
        } catch (SQLException | ClassNotFoundException | InstantiationException | IllegalAccessException ex) {
            Logger.getLogger(DBManager.class.getName()).log(Level.SEVERE, null, ex);
        }

        return products;
    }
}
