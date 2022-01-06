package Controller;


import DAO.CRUDDrink;
import DAO.CRUDProduct;
import Model.Products.ProductDrink;
import Model.Products.ProductFood;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;


@WebServlet(urlPatterns = "")
public class HomeServlet extends HttpServlet {
    static List<ProductFood> productService = CRUDProduct.getAll();
    static List<ProductDrink> productDrinks = CRUDDrink.getAllDrink();

    public int findIndex(int id) {

        for (int i = 0; i < productService.size(); i++) {
            if (productService.get(i).getIdProductFood() == id) {
                return i;
            }
        }
        return -1;
    }
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        productService = CRUDProduct.getAll();
        productDrinks = CRUDDrink.getAllDrink();
        String action = req.getParameter("action");
        if (action == null) {
            action = "";
        }

        switch (action) {
            case "monbo":
                req.setAttribute("listMonBo", CRUDProduct.getBo());
                RequestDispatcher requestDispatcher = req.getRequestDispatcher("/showBo.jsp");
                requestDispatcher.forward(req, resp);
                break;
            case "monga":
                req.setAttribute("listMonGa", CRUDProduct.getGa());
                requestDispatcher = req.getRequestDispatcher("/showGa.jsp");
                requestDispatcher.forward(req, resp);
                break;
            case "edit":
                int idE = Integer.parseInt(req.getParameter("id"));
                ProductFood productFood = productService.get(findIndex(idE));
                req.setAttribute("editProduct",productFood);
                RequestDispatcher requestDispatcher1 = req.getRequestDispatcher("/EditProduct.jsp");
                requestDispatcher1.forward(req, resp);
                break;
            case "delete":
                int id = Integer.parseInt(req.getParameter("id"));
                try {
                    CRUDProduct.deleteProduct(id);
                } catch (SQLException throwables) {
                    throwables.printStackTrace();
                }
                resp.sendRedirect("/");
                break;
            default:
                req.setAttribute("listProduct", CRUDProduct.getAll());
                req.setAttribute("listProductDrink", CRUDDrink.getAllDrink());
                requestDispatcher = req.getRequestDispatcher("/View/login.jsp");
                requestDispatcher.forward(req, resp);
                break;
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "create":
                String nameProduct = req.getParameter("name");
                double priceProduct = Double.parseDouble(req.getParameter("price"));
                String imgProduct = req.getParameter("img");
                int typeProduct = Integer.parseInt(req.getParameter("typeProduct"));

                CRUDProduct.saveProduct(new ProductFood(nameProduct, priceProduct, imgProduct, typeProduct));
                resp.sendRedirect("/");
                break;
            case "search":
                String nameSearch = req.getParameter("findproduct");
                req.setAttribute("listSP", CRUDProduct.findByName(nameSearch));
                RequestDispatcher requestDispatcher = req.getRequestDispatcher("/FindProduct.jsp");
                requestDispatcher.forward(req, resp);
                break;
            case "edit":
                int idE = Integer.parseInt(req.getParameter("id"));
                String nameProductE = req.getParameter("name");
                double priceProductE = Double.parseDouble(req.getParameter("price"));
                String imgProductE = req.getParameter("img");
                int typeProductE = Integer.parseInt(req.getParameter("typeProduct"));

                try {
                    CRUDProduct.editProduct(new ProductFood(idE,nameProductE, priceProductE, imgProductE, typeProductE));
                } catch (Exception throwables) {
                    throwables.printStackTrace();
                }
                resp.sendRedirect("/");
                break;

        }
    }
}
