package DAO;

import model.Product;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class CRUDProduct {
    static Connection connection = ConnectionMySQL1.getConnection();

    public static List<Product> showProduct() {
        String splSelect = "select * from sanpham";
        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(splSelect);
            ArrayList<Product> listProduct = new ArrayList<>();

            while (resultSet.next()) {
                int idproduct = resultSet.getInt("idproduct");
                String nameProduct = resultSet.getString("nameProduct");
                int priceProduct = resultSet.getInt("priceProduct");
                int soluongProduct = resultSet.getInt("soluongProduct");
                String colorProduct = resultSet.getString("colorProduct");
                int idcategory = resultSet.getInt("idcategory");
                listProduct.add(new Product(idproduct, nameProduct, priceProduct, soluongProduct,colorProduct,idcategory));
            }
            return listProduct;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public static void saveProduct(Product product) {
        String sqlSave = "INSERT INTO sanpham(`nameProduct`, `priceProduct`, `soluongProduct`, `colorProduct`,`idcategory`) VALUES (?,?,?,?,?)";
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(sqlSave);
            preparedStatement.setString(1,product.getNameProduct());
            preparedStatement.setDouble(2,product.getPriceProduct());
            preparedStatement.setInt(3,product.getSoluongProduct());
            preparedStatement.setString(4,product.getColorProduct());
            preparedStatement.setInt(5,product.getIdcategory());

            preparedStatement.execute();

        } catch (Exception throwables) {
            throwables.printStackTrace();
        }

    }

    public static void editProduct(Product product) throws SQLException {
        String sqlEdit = "update sanpham set nameProduct =?,priceProduct =?,soluongProduct =?,colorProduct =?,idcategory =? where idproduct =?";
        PreparedStatement preparedStatement = connection.prepareStatement(sqlEdit);

        preparedStatement.setInt(6, product.getIdProduct());
        preparedStatement.setString(1, product.getNameProduct());
        preparedStatement.setDouble(2, product.getPriceProduct());
        preparedStatement.setInt(3, product.getSoluongProduct());
        preparedStatement.setString(4, product.getColorProduct());
        preparedStatement.setInt(5, product.getIdcategory());

        preparedStatement.execute();
    }

    public static void deleteProduct(int id) throws SQLException {
        String sqlDelete = "delete from sanpham where id=?";
        PreparedStatement preparedStatement = connection.prepareStatement(sqlDelete);
        preparedStatement.setInt(1, id);

        preparedStatement.execute();
    }
    public static List<Product> findByName(String nameFind) {

        String find = "SELECT * FROM sanpham " +
                "\n" +
                "where nameProduct like '%" + nameFind + "%\'";
        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(find);

            List<Product> products = new ArrayList<>();
            while (resultSet.next()) {
                int idproduct = resultSet.getInt("idproduct");
                String nameProduct = resultSet.getString("nameProduct");
                int priceProduct = resultSet.getInt("priceProduct");
                int soluongProduct = resultSet.getInt("soluongProduct");
                String colorProduct = resultSet.getString("colorProduct");
                int idcategory = resultSet.getInt("idcategory");
                products.add(new Product(idproduct, nameProduct, priceProduct, soluongProduct,colorProduct,idcategory));
            }
            return products;

        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

}
