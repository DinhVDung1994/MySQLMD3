package DAO;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectionMySQL {
    public static Connection getConnection(){
        String url = "jdbc:mysql://localhost:3306/quanlynhahang";
        String user ="root";
        String password = "123456";

        Connection connection = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection(url,user,password);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return connection;
    }
}
