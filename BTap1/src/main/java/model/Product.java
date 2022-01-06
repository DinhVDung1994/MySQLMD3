package model;

public class Product {
    private int idProduct;
    private String nameProduct;
    private int priceProduct;
    private int soluongProduct;
    private String colorProduct;
    private int idcategory;

    public Product() {
    }

    public Product(String nameProduct, int priceProduct, int soluongProduct, String colorProduct, int idcategory) {
        this.nameProduct = nameProduct;
        this.priceProduct = priceProduct;
        this.soluongProduct = soluongProduct;
        this.colorProduct = colorProduct;
        this.idcategory = idcategory;
    }

    public Product(int idProduct, String nameProduct, int priceProduct, int soluongProduct, String colorProduct, int idcategory) {
        this.idProduct = idProduct;
        this.nameProduct = nameProduct;
        this.priceProduct = priceProduct;
        this.soluongProduct = soluongProduct;
        this.colorProduct = colorProduct;
        this.idcategory = idcategory;
    }

    public int getIdProduct() {
        return idProduct;
    }

    public void setIdProduct(int idProduct) {
        this.idProduct = idProduct;
    }

    public String getNameProduct() {
        return nameProduct;
    }

    public void setNameProduct(String nameProduct) {
        this.nameProduct = nameProduct;
    }

    public int getPriceProduct() {
        return priceProduct;
    }

    public void setPriceProduct(int priceProduct) {
        this.priceProduct = priceProduct;
    }

    public int getSoluongProduct() {
        return soluongProduct;
    }

    public void setSoluongProduct(int soluongProduct) {
        this.soluongProduct = soluongProduct;
    }

    public String getColorProduct() {
        return colorProduct;
    }

    public void setColorProduct(String colorProduct) {
        this.colorProduct = colorProduct;
    }

    public int getIdcategory() {
        return idcategory;
    }

    public void setIdcategory(int idcategory) {
        this.idcategory = idcategory;
    }
}
