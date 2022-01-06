package DAO;

import Model.Products.ProductDrink;
import Model.Products.ProductFood;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class CRUDDrink {
    static Connection connection = ConnectionMySQL.getConnection();
    public static List<ProductDrink> getAllDrink(){
        String selectAll = "select * from nuocuong";

        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(selectAll);

            List<ProductDrink> productDrinks = new ArrayList<>();

            while (resultSet.next()){
                int idProductDrink = resultSet.getInt("idProductDrink");
                String nameProductDrink = resultSet.getString("nameProductDrink");
                double priceProductDrink = resultSet.getDouble("priceProductDrink");
                String imgProductDrink = resultSet.getString("imgProductDrink");

                productDrinks.add(new ProductDrink(idProductDrink,nameProductDrink,priceProductDrink,imgProductDrink));
            }
            return productDrinks;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
    public static void saveProductDrink(ProductDrink productDrink) {
        String sqlSave = "INSERT INTO nuocuong(`nameProductDrink`, `priceProductDrink`, `imgProductDrink`) VALUES (?,?,?)";
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(sqlSave);
            preparedStatement.setString(1,productDrink.getNameProductDrink());
            preparedStatement.setDouble(2,productDrink.getPriceProductDrink());
            preparedStatement.setString(3,productDrink.getImgProductDrink());

            preparedStatement.execute();

        } catch (Exception throwables) {
            throwables.printStackTrace();
        }
    }
    public static void editProductDrink(ProductDrink productDrink) throws SQLException {
        String sqlEdit = "update nuocuong set nameProductDrink =?,priceProductDrink =?,imgProductDrink =? where idProductDrink =?";
        PreparedStatement preparedStatement = connection.prepareStatement(sqlEdit);

        preparedStatement.setInt(4, productDrink.getIdProductDrink());
        preparedStatement.setString(1, productDrink.getNameProductDrink());
        preparedStatement.setDouble(2, productDrink.getPriceProductDrink());
        preparedStatement.setString(3, productDrink.getImgProductDrink());

        preparedStatement.execute();
    }
    public static void deleteProduct(int id) throws SQLException {
        String sqlDelete = "delete from nuocuong where idProductDrink=?";
        PreparedStatement preparedStatement = connection.prepareStatement(sqlDelete);
        preparedStatement.setInt(1, id);

        preparedStatement.execute();
    }
}
