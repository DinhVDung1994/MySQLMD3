package DAO.Account;

import DAO.ConnectionMySQL;
import Model.Account.Accounts;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class AccountsDao {
    private Connection connection = ConnectionMySQL.getConnection();

    public List<Accounts> getAllAccount() {
        String sqlGetAllAcc = "select * from accounts";
        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(sqlGetAllAcc);
            List<Accounts> accountsList = new ArrayList<>();

            while (resultSet.next()) {
                int id = resultSet.getInt("idaccount");
                String name = resultSet.getString("tenaccount");
                String password = resultSet.getString("passaccount");
                String phone = resultSet.getString("sodienthoai");
                int idAccType = resultSet.getInt("idloaiacc");
                accountsList.add(new Accounts(id, name, password, phone, idAccType));

            }
            return accountsList;

        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }


    public Accounts searchAcc(String username, String pass) {
        String sqlSearch = "SELECT * FROM accounts where tenaccount = ? and passaccount = ?";

        try {
            PreparedStatement preparedStatement = connection.prepareStatement(sqlSearch);
            preparedStatement.setString(1, username);
            preparedStatement.setString(2, pass);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                return new Accounts(resultSet.getInt(1),
                        resultSet.getString(2),
                        resultSet.getString(3),
                        resultSet.getString(4),
                        resultSet.getInt(5));

            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public void createAcc(Accounts account) {
        String sqlCreateAcc = "INSERT INTO accounts (`tenaccount`, `passaccount`, `sodienthoai`) VALUES ( ?, ?, ?)";
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(sqlCreateAcc);
            preparedStatement.setString(1, account.getUserName());
            preparedStatement.setString(2, account.getPassWord());
            preparedStatement.setString(3, account.getPhoneNumber());
            preparedStatement.execute();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }


    public void deleteAcc(int id) {
        String sqlDeleteAcc = "delete from accounts where idaccount = ?";
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(sqlDeleteAcc);
            preparedStatement.setInt(1,id);
            preparedStatement.execute();
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }

    public void updateAcc(int index, Accounts accounts) {
        String sqlUpdateAcc = "update accounts set tenaccount = ?, passaccount = ? , sodienthoai = ? , idloaiacc = ?  where id=? ";
        try {
            PreparedStatement ps = connection.prepareStatement(sqlUpdateAcc);

            ps.setString(1, accounts.getUserName());
            ps.setString(2, accounts.getPassWord());
            ps.setString(3, accounts.getPhoneNumber());
            ps.setInt(4, accounts.getIdTypeAccount());
            ps.execute();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

}
