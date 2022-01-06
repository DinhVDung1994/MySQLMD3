package DAO;

import Model.Products.ProductFood;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class CRUDProduct {
   static Connection connection = ConnectionMySQL.getConnection();

    public static List<ProductFood> getAll(){
        String selectAll = "select * from sanpham";

        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(selectAll);

            List<ProductFood> productFoods = new ArrayList<>();

            while (resultSet.next()){
                int idProduct = resultSet.getInt("idProduct");
                String nameProduct = resultSet.getString("nameProduct");
                double priceProduct = resultSet.getDouble("priceProduct");
                String imgProduct = resultSet.getString("imgProduct");
                int idTypeProduct = resultSet.getInt("idTypeProduct");

                productFoods.add(new ProductFood(idProduct,nameProduct,priceProduct,imgProduct,idTypeProduct));
            }
            return productFoods;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
    public static List<ProductFood> getBo(){
        String selectAll = "SELECT * FROM sanpham\n" +
                "where idTypeProduct = 3";

        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(selectAll);

            List<ProductFood> productFoods = new ArrayList<>();

            while (resultSet.next()){
                int idProduct = resultSet.getInt("idProduct");
                String nameProduct = resultSet.getString("nameProduct");
                double priceProduct = resultSet.getDouble("priceProduct");
                String imgProduct = resultSet.getString("imgProduct");
                int idTypeProduct = resultSet.getInt("idTypeProduct");

                productFoods.add(new ProductFood(idProduct,nameProduct,priceProduct,imgProduct,idTypeProduct));
            }
            return productFoods;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
    public static List<ProductFood> getGa(){
        String selectAll = "SELECT * FROM sanpham\n" +
                "where idTypeProduct = 1";

        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(selectAll);

            List<ProductFood> productFoods = new ArrayList<>();

            while (resultSet.next()){
                int idProduct = resultSet.getInt("idProduct");
                String nameProduct = resultSet.getString("nameProduct");
                double priceProduct = resultSet.getDouble("priceProduct");
                String imgProduct = resultSet.getString("imgProduct");
                int idTypeProduct = resultSet.getInt("idTypeProduct");

                productFoods.add(new ProductFood(idProduct,nameProduct,priceProduct,imgProduct,idTypeProduct));
            }
            return productFoods;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
    public static void saveProduct(ProductFood productFood) {
        String sqlSave = "INSERT INTO sanpham(`nameProduct`, `priceProduct`, `imgProduct`, `idTypeProduct`) VALUES (?,?,?,?)";
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(sqlSave);
            preparedStatement.setString(1,productFood.getNameProductFood());
            preparedStatement.setDouble(2,productFood.getPriceProductFood());
            preparedStatement.setString(3,productFood.getImgProductFood());
            preparedStatement.setInt(4,productFood.getIdTypeProductFood());

            preparedStatement.execute();

        } catch (Exception throwables) {
            throwables.printStackTrace();
        }
    }
    public static void editProduct(ProductFood productFood) throws SQLException {
        String sqlEdit = "update sanpham set nameProduct =?,priceProduct =?,imgProduct =?,idTypeProduct =? where idProduct =?";
        PreparedStatement preparedStatement = connection.prepareStatement(sqlEdit);

        preparedStatement.setInt(5, productFood.getIdProductFood());
        preparedStatement.setString(1, productFood.getNameProductFood());
        preparedStatement.setDouble(2, productFood.getPriceProductFood());
        preparedStatement.setString(3, productFood.getImgProductFood());
        preparedStatement.setInt(4, productFood.getIdTypeProductFood());

        preparedStatement.execute();
    }
    public static void deleteProduct(int id) throws SQLException {
        String sqlDelete = "delete from sanpham where idProduct=?";
        PreparedStatement preparedStatement = connection.prepareStatement(sqlDelete);
        preparedStatement.setInt(1, id);

        preparedStatement.execute();
    }
    public static List<ProductFood> findByName(String nameFind) {

        String find = "SELECT * FROM sanpham " +
                "\n" +
                "where nameProduct like '%" + nameFind + "%\'";
        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(find);

            List<ProductFood> sanPhams = new ArrayList<>();
            while (resultSet.next()) {
                int idProduct = resultSet.getInt("idProduct");
                String nameProduct = resultSet.getString("nameProduct");
                double priceProduct = resultSet.getDouble("priceProduct");
                String imgProduct = resultSet.getString("imgProduct");
                int idTypeProduct = resultSet.getInt("idTypeProduct");
                sanPhams.add(new ProductFood(idProduct, nameProduct, priceProduct,imgProduct,idTypeProduct));
            }
            return sanPhams;

        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

}
