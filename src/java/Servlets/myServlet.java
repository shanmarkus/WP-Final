package Servlets;

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
import Objects.DBManager;
import Objects.Product;
import Objects.ProductInCart;
import Objects.User;
import captchas.CaptchasDotNet;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Jason
 */
public class myServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP
     * <code>GET</code> and
     * <code>POST</code> methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        try {

            //Login Page && Sign Up Page

            //Login
            if (request.getParameter("page").equals("login")) {
                String username = request.getParameter("username");
                String password = request.getParameter("password");
                boolean status = new DBManager().checkUser(username, password);
                User user = new DBManager().checkUserLogin(username, password);


                if (status == true) {
                    String name = user.getName();
                    String role = user.getRole();
                    String userID = user.getUserID();
                    HttpSession session = request.getSession();
                    if (role.equals("user")) {
                        session.setAttribute("name", name);
                        session.setAttribute("userID", userID);
                        session.setAttribute("username", username);
                        session.setAttribute("cart", new ArrayList<ProductInCart>());
                        response.sendRedirect("mainmenu.jsp");
                    } else if (role.equals("administrator")) {
                        session.setAttribute("name", name);
                        response.sendRedirect("admin.jsp");
                    }
                } else {
                    response.sendRedirect("loginFailed.jsp");
                }


            } // Sign Up Notes: Havent use refactoring mode
            else if (request.getParameter(
                    "page").equals("signup")) {
                // Construct the captchas object
                // Use same settings as in query.jsp
                CaptchasDotNet captchas = new captchas.CaptchasDotNet(request.getSession(true), "demo", "secret");

                // Read the form values
                String captcha = request.getParameter("captcha");

                // Check captcha
                switch (captchas.check(captcha)) {
                    case 's':
                        // Fail
                        response.sendRedirect("loginFailed.jsp");
                        break;
                    case 'm':
                        // Fail
                        response.sendRedirect("loginFailed.jsp");
                        break;
                    case 'w':
                        // Fail
                        response.sendRedirect("loginFailed.jsp");
                        break;
                    default:
                        String username = request.getParameter("username");
                        String password = request.getParameter("password");
                        String name = request.getParameter("name");
                        String address = request.getParameter("address");
                        String email = request.getParameter("email");

                        new DBManager().registerUser(username, password, name, address, email);
                        response.sendRedirect("index.jsp");

                }
            } //logout button
            else if (request.getParameter("page").equals("logout")) {
                HttpSession session = request.getSession();
                session.invalidate();
                response.sendRedirect("index.jsp");
            } //edit profile passby
            else if (request.getParameter("page").equals("editprofile")) {
                HttpSession session = request.getSession();
                session.setAttribute("userID", request.getAttribute("userID"));
                response.sendRedirect("editProfile.jsp");
            }// edit profile
            else if (request.getParameter("page").equals("editProfilePage")) {
                String password = request.getParameter("password");
                String name = request.getParameter("name");
                String address = request.getParameter("address");
                String email = request.getParameter("email");
                String username = request.getParameter("username");
                new DBManager().updateUser(password, name, address, email, username);
                boolean status = new DBManager().checkUser(username, password);
                User user = new DBManager().checkUserLogin(username, password);

                String role = user.getRole();
                String userID = user.getUserID();
                HttpSession session = request.getSession();
                session.setAttribute("name", name);
                session.setAttribute("userID", userID);
                session.setAttribute("username", username);
                response.sendRedirect("mainmenu.jsp");

            } //foget password  
            else if (request.getParameter("page").equals("forgetpassword")) {
                String username = request.getParameter("username");
                User user = new DBManager().getUserForgetPass(username);
                String password = user.getPassword();
                String wrongSearch = "User not found";
                HttpSession session = request.getSession();
                out.println(password);
                if (password.isEmpty()) {
                    session.setAttribute("password", wrongSearch);
                    response.sendRedirect("forgetPassword.jsp");
                } else {
                    session.setAttribute("password", password);
                    response.sendRedirect("forgetPassword.jsp");
                }

            } //Categories Page 
            else if (request.getParameter("page").equals("categories")) {
                ArrayList<ProductInCart> cart = (ArrayList<ProductInCart>) request.getSession(false).getAttribute("cart");
                HttpSession session = request.getSession();
                String category = request.getParameter("category");

                if (category.equals("hardware")) {
                    String subcategory = request.getParameter("subcategory");
                    if (subcategory.equals("processor")) {
                        session.setAttribute("category", category);
                        session.setAttribute("subcategory", subcategory);
                        response.sendRedirect("shelf.jsp");

                    } else if (subcategory.equals("motherboard")) {
                        //find in database that have hardware categery and subcategory motherboard
                        session.setAttribute("category", category);
                        session.setAttribute("subcategory", subcategory);
                        response.sendRedirect("shelf.jsp");
                    } else if (subcategory.equals("harddisk")) {
                        //find in database that have hardware category and subcategory harddisk 
                        session.setAttribute("category", category);
                        session.setAttribute("subcategory", subcategory);
                        response.sendRedirect("shelf.jsp");
                    } else if (subcategory.equals("vgacard")) {
                        //find in database that have hardware category and subcategory vga card
                        session.setAttribute("category", category);
                        session.setAttribute("subcategory", subcategory);
                        response.sendRedirect("shelf.jsp");
                    } else {
                        response.sendRedirect("shelf.jsp");
                    }

                } else if (category.equals("software")) {
                    String subcategory = request.getParameter("subcategory");
                    if (subcategory.equals("game")) {
                        //find in database that have hardware category and subcategory processors
                    } else if (subcategory.equals("videophoto")) {
                        //find in database that have hardware categery and subcategory motherboard
                    } else if (subcategory.equals("antivirus")) {
                        //find in database that have hardware category and subcategory harddisk 
                    } else if (subcategory.equals("other")) {
                        //find in database that have hardware category and subcategory vga card
                    }
                }


            } //Shelf Controller 
            //Buy Product
            else if (request.getParameter(
                    "page").equals("buy")) {
                ArrayList<ProductInCart> cart = (ArrayList<ProductInCart>) request.getSession(false).getAttribute("cart");
                Product product = new DBManager().getProduct(request.getParameter("productID"));

                Boolean exists = false;
                for (ProductInCart p : cart) {
                    if (p.getProductID().equals(product.getProductID())) {
                        p.setAmount(p.getAmount() + Integer.parseInt(request.getParameter("amount")));
                        exists = true;
                    }
                }

                if (!exists) {
                    ProductInCart newProduct = new ProductInCart(product.getProductID(), product.getCategory(), product.getSubcategory(), product.getName(), product.getDescription(), product.getStock(), product.getPrice(), product.getPictureURL(), Integer.parseInt(request.getParameter("amount")));
                    cart.add(newProduct);
                }

                response.sendRedirect("shelf.jsp");
            } //Admin Servlet
            //
            else if (request.getParameter("page").equals("adminsearchbar")) {
                String searchtype = request.getParameter("searchtype");
                String search = request.getParameter("search");

                if (searchtype.equals("user")) {
                    HttpSession session = request.getSession();
                    session.setAttribute("searchtype", searchtype);
                    session.setAttribute("search", search);
                    response.sendRedirect("searchResultAdmin.jsp");
                } else if (searchtype.equals("product")) {
                    HttpSession session = request.getSession();
                    session.setAttribute("searchtype", searchtype);
                    response.sendRedirect("searchResultAdmin.jsp");
                }
            } //Admin Header Servlet Controller 
            else if (request.getParameter("page").equals("adminheader")) {
                String action = request.getParameter("action");

                if (action.equals("stocksystem")) {
                    response.sendRedirect("adminStock.jsp");
                } else if (action.equals("usersetting")) {
                    response.sendRedirect("admin.jsp");
                } else {
                    response.sendRedirect("adminTransaction.jsp");
                }

            } //Admin.jsp Servlet Controller Managing User Setting 
            else if (request.getParameter("page").equals("admin")) {
                String command = request.getParameter("command");
                if (command.equals("delete")) {
                    String username = request.getParameter("username");
                    out.println(username);
                    new DBManager().deleteUser(username);
                    response.sendRedirect("admin.jsp");
                } else if (command.equals("edit")) {
                    request.getSession(false).setAttribute("username", request.getParameter("username"));
                    response.sendRedirect("editUser.jsp");
                }
            } //Edit User Servlet
            else if (request.getParameter("page").equals("editUser")) {
                String password = request.getParameter("password");
                String name = request.getParameter("name");
                String address = request.getParameter("address");
                String email = request.getParameter("email");
                String username = request.getParameter("username");
                new DBManager().updateUser(password, name, address, email, username);
                //response.sendRedirect("admin.jsp");

            } //Admin Stock Servlet (Controling admin stock page)
            else if (request.getParameter("page").equals("adminstock")) {

                if (request.getParameter("command").equals("delete")) {

                    new DBManager().deleteProduct(request.getParameter("productID"));
                    out.println("FAKK ERROR");
                    response.sendRedirect("adminStock.jsp");

                } else if (request.getParameter("command").equals("edit")) {
                    String productID = request.getParameter("productID");
                    String name = request.getParameter("name");
                    HttpSession session = request.getSession();
                    session.setAttribute("name", name);
                    session.setAttribute("productID", productID);
                    response.sendRedirect("editStock.jsp");

                }

            } else if (request.getParameter("page").equals("editStock")) {
                String productID = request.getParameter("productID");
                String name = request.getParameter("name");
                String description = request.getParameter("description");
                Integer stock = Integer.parseInt(request.getParameter("stock"));
                Integer price = Integer.parseInt(request.getParameter("price"));
                String pictureURL = request.getParameter("pictureURL");
                new DBManager().editProduct(name, description, stock, price, pictureURL, productID);
                response.sendRedirect("adminStock.jsp");

            } else if (request.getParameter("page").equals("addStock")) {
                String category = request.getParameter("category");
                String subcategory = request.getParameter("subcategory");
                String name = request.getParameter("name");
                String description = request.getParameter("description");
                Integer stock = Integer.parseInt(request.getParameter("stock"));
                Integer price = Integer.parseInt(request.getParameter("price"));
                String pictureURL = request.getParameter("pictureURL");
                new DBManager().addProduct(category, subcategory, name, description, stock, price, pictureURL);
                response.sendRedirect("adminStock.jsp");
            } // Checkout.jsp 
            // delete a product
            else if (request.getParameter(
                    "page").equals("delete")) {
                ArrayList<ProductInCart> cart = (ArrayList<ProductInCart>) request.getSession(false).getAttribute("cart");

                for (int i = 0; i < cart.size(); i++) {
                    if (cart.get(i).getProductID().equals(request.getParameter("productID"))) {
                        cart.remove(i);
                        break;
                    }
                }

                response.sendRedirect("checkout.jsp");
            } // delete all product 
            else if (request.getParameter(
                    "page").equals("deleteall")) {
                ArrayList<ProductInCart> cart = (ArrayList<ProductInCart>) request.getSession(false).getAttribute("cart");

                cart.clear();

                response.sendRedirect("checkout.jsp");


            } //Edit Amount of items
            else if (request.getParameter(
                    "page").equals("editamount")) {
                ArrayList<ProductInCart> cart = (ArrayList<ProductInCart>) request.getSession(false).getAttribute("cart");

                for (int i = 0; i < cart.size(); i++) {
                    if (cart.get(i).getProductID().equals(request.getParameter("productID"))) {
                        Integer newamount = Integer.parseInt(request.getParameter("newamount"));

                        if (newamount == 0) {
                            cart.remove(i);
                        } else {
                            cart.get(i).setAmount(Integer.parseInt(request.getParameter("newamount")));
                        }

                        break;
                    }
                }

                response.sendRedirect("checkout.jsp");
            } //If costumer already finished their buy then send to confirm.jsp
            else if (request.getParameter(
                    "page").equals("confirm")) {

                response.sendRedirect("confirm.jsp");


            } else if (request.getParameter("page").equals("confirmtransaction")) {
                String listlog = request.getParameter("listlog");
                String userID = request.getParameter("userID");
                Integer userIDtemp = Integer.parseInt(userID);
                new DBManager().createInvoice(userIDtemp, listlog);

                HttpSession session = request.getSession();
                session.setAttribute("userID", userID);

                //sent redirect
                response.sendRedirect("invoice.jsp");
            } //Search bar function
            else if (request.getParameter(
                    "page").equals("searchbar")) {
                HttpSession session = request.getSession();
                String search = request.getParameter("search");
                session.setAttribute("search", search);
                response.sendRedirect("searchResult.jsp");

            }
        } finally {
            out.close();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP
     * <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP
     * <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
