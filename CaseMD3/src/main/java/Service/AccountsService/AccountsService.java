package Service.AccountsService;

import DAO.Account.AccountsDao;
import Model.Account.Accounts;

import java.util.List;

public class AccountsService {
    AccountsDao accountsDao = new AccountsDao();

    public List<Accounts> accountsList = accountsDao.getAllAccount();

    public Accounts searchAcc(String username, String password) {
        return accountsDao.searchAcc(username,password);
    }

    public void createAcc(Accounts account) {
        accountsDao.createAcc(account);

    }
}
