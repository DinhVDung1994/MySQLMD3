package controller;

import DAO.CRUDProduct;
import model.Product;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;


@WebServlet(value = "/")
public class ControllerProduct extends HttpServlet {
    static List<Product> productList = CRUDProduct.showProduct();

    public int findIndex(int id) {

        for (int i = 0; i < productList.size(); i++) {
            if (productList.get(i).getIdProduct() == id) {
                return i;
            }
        }
        return -1;
    }


    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        productList = CRUDProduct.showProduct();
        String action = req.getParameter("action");
        if (action == null) {
            action = "";
        }

        switch (action) {
            case "create":
                resp.sendRedirect("create.jsp");
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
            case "edit":
                int idE = Integer.parseInt(req.getParameter("id"));
                Product product = productList.get(findIndex(idE));
                req.setAttribute("editProduct", product);
                RequestDispatcher requestDispatcher;
                requestDispatcher = req.getRequestDispatcher("editProduct.jsp");
                requestDispatcher.forward(req, resp);
                break;
            default:
                req.setAttribute("danhSachProduct", CRUDProduct.showProduct());
                requestDispatcher = req.getRequestDispatcher("");
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
        productList = CRUDProduct.showProduct();
        switch (action) {
            case "create":
                String nameProduct = req.getParameter("nameProduct");
                int priceProduct = Integer.parseInt(req.getParameter("priceProduct"));
                int soluongProduct = Integer.parseInt(req.getParameter("soluongProduct"));
                String colorProduct = req.getParameter("colorProduct");
                int category = Integer.parseInt(req.getParameter("category"));
                try {
                    CRUDProduct.saveProduct(new Product(nameProduct, priceProduct, soluongProduct,colorProduct,category));
                } catch (Exception throwables) {
                    throwables.printStackTrace();
                }

                resp.sendRedirect("/");
                break;
            case "search":
                String nameSearch = req.getParameter("findproduct");
                req.setAttribute("listSP", CRUDProduct.findByName(nameSearch));
                RequestDispatcher requestDispatcher = req.getRequestDispatcher("/FindProduct.jsp");
                requestDispatcher.forward(req, resp);
                break;
            case "edit":
                String nameProductE = req.getParameter("nameProduct");
                int priceProductE = Integer.parseInt(req.getParameter("priceProduct"));
                int soluongProductE = Integer.parseInt(req.getParameter("soluongProduct"));
                String colorProductE = req.getParameter("colorProduct");
                int categoryE = Integer.parseInt(req.getParameter("category"));
                try {
                    CRUDProduct.saveProduct(new Product(nameProductE, priceProductE, soluongProductE,colorProductE,categoryE));
                } catch (Exception throwables) {
                    throwables.printStackTrace();
                }

                resp.sendRedirect("/");
                break;
        }

    }
}
