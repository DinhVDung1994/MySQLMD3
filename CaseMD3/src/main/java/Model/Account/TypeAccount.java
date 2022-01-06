package Model.Account;

public class TypeAccount {
    private int idTypeAccount;
    private String nameTypeAccount;

    public TypeAccount() {
    }

    public TypeAccount(String nameTypeAccount) {
        this.nameTypeAccount = nameTypeAccount;
    }

    public int getIdTypeAccount() {
        return idTypeAccount;
    }

    public void setIdTypeAccount(int idTypeAccount) {
        this.idTypeAccount = idTypeAccount;
    }

    public String getNameTypeAccount() {
        return nameTypeAccount;
    }

    public void setNameTypeAccount(String nameTypeAccount) {
        this.nameTypeAccount = nameTypeAccount;
    }
}
