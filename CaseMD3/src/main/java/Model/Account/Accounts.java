package Model.Account;

public class Accounts {
    private int idAccount;
    private String userName;
    private String passWord;
    private String phoneNumber;
    private int idTypeAccount;

    public Accounts() {
    }

    public Accounts(String userName, String passWord, String phoneNumber) {
        this.userName = userName;
        this.passWord = passWord;
        this.phoneNumber = phoneNumber;
    }

    public Accounts(int idAccount, String userName, String passWord, String phoneNumber, int idTypeAccount) {
        this.idAccount = idAccount;
        this.userName = userName;
        this.passWord = passWord;
        this.phoneNumber = phoneNumber;
        this.idTypeAccount = idTypeAccount;
    }

    public Accounts(String userName, String passWord, String phoneNumber, int idTypeAccount) {
        this.userName = userName;
        this.passWord = passWord;
        this.phoneNumber = phoneNumber;
        this.idTypeAccount = idTypeAccount;
    }

    public int getIdAccount() {
        return idAccount;
    }

    public void setIdAccount(int idAccount) {
        this.idAccount = idAccount;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassWord() {
        return passWord;
    }

    public void setPassWord(String passWord) {
        this.passWord = passWord;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public int getIdTypeAccount() {
        return idTypeAccount;
    }

    public void setIdTypeAccount(int idTypeAccount) {
        this.idTypeAccount = idTypeAccount;
    }
}
