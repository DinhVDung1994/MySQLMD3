package Model.Products;

public class ProductDrink {
    private int idProductDrink;
    private String nameProductDrink;
    private double priceProductDrink;
    private String imgProductDrink;

    public ProductDrink() {
    }

    public ProductDrink(String nameProductDrink, double priceProductDrink, String imgProductDrink) {
        this.nameProductDrink = nameProductDrink;
        this.priceProductDrink = priceProductDrink;
        this.imgProductDrink = imgProductDrink;
    }

    public ProductDrink(int idProductDrink, String nameProductDrink, double priceProductDrink, String imgProductDrink) {
        this.idProductDrink = idProductDrink;
        this.nameProductDrink = nameProductDrink;
        this.priceProductDrink = priceProductDrink;
        this.imgProductDrink = imgProductDrink;
    }

    public int getIdProductDrink() {
        return idProductDrink;
    }

    public void setIdProductDrink(int idProductDrink) {
        this.idProductDrink = idProductDrink;
    }

    public String getNameProductDrink() {
        return nameProductDrink;
    }

    public void setNameProductDrink(String nameProductDrink) {
        this.nameProductDrink = nameProductDrink;
    }

    public double getPriceProductDrink() {
        return priceProductDrink;
    }

    public void setPriceProductDrink(double priceProductDrink) {
        this.priceProductDrink = priceProductDrink;
    }

    public String getImgProductDrink() {
        return imgProductDrink;
    }

    public void setImgProductDrink(String imgProductDrink) {
        this.imgProductDrink = imgProductDrink;
    }
}
