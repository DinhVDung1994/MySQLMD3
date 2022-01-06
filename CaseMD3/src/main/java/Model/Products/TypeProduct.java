package Model.Products;

public class TypeProduct {
    private int idTypeProduct;
    private String nameTypeProduct;

    public TypeProduct() {
    }

    public TypeProduct(String nameTypeProduct) {
        this.nameTypeProduct = nameTypeProduct;
    }

    public int getIdTypeProduct() {
        return idTypeProduct;
    }

    public void setIdTypeProduct(int idTypeProduct) {
        this.idTypeProduct = idTypeProduct;
    }

    public String getNameTypeProduct() {
        return nameTypeProduct;
    }

    public void setNameTypeProduct(String nameTypeProduct) {
        this.nameTypeProduct = nameTypeProduct;
    }
}
