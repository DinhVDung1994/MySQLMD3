package DAO;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectionMySQL1 {
    public static Connection getConnection(){
        try{
            String url = "jdbc:mysql://localhost:3306/productmanager";
            String user = "root";
            String passwork = "123456";

            Class.forName("com.mysql.jdbc.Driver");
            Connection connection = DriverManager.getConnection(url,user,passwork);
            return  connection;
        }catch (Exception e){
            e.printStackTrace();
        }
        return null;
    }
}
