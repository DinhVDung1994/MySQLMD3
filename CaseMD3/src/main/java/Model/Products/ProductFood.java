package Model.Products;

public class ProductFood {
    private int idProductFood;
    private String nameProductFood;
    private double priceProductFood;
    private String imgProductFood;
    private int idTypeProductFood;


    public ProductFood() {
    }

    public ProductFood(String nameProductFood, double priceProductFood, String imgProductFood, int idTypeProductFood) {
        this.nameProductFood = nameProductFood;
        this.priceProductFood = priceProductFood;
        this.imgProductFood = imgProductFood;
        this.idTypeProductFood = idTypeProductFood;
    }

    public ProductFood(int idProduct, String nameProductFood, double priceProductFood, String imgProductFood, int idTypeProductFood) {
        this.idProductFood = idProduct;
        this.nameProductFood = nameProductFood;
        this.priceProductFood = priceProductFood;
        this.imgProductFood = imgProductFood;
        this.idTypeProductFood = idTypeProductFood;
    }

    public int getIdProductFood() {
        return idProductFood;
    }

    public void setIdProductFood(int idProductFood) {
        this.idProductFood = idProductFood;
    }

    public String getNameProductFood() {
        return nameProductFood;
    }

    public void setNameProductFood(String nameProductFood) {
        this.nameProductFood = nameProductFood;
    }

    public double getPriceProductFood() {
        return priceProductFood;
    }

    public void setPriceProductFood(double priceProductFood) {
        this.priceProductFood = priceProductFood;
    }

    public String getImgProductFood() {
        return imgProductFood;
    }

    public void setImgProductFood(String imgProductFood) {
        this.imgProductFood = imgProductFood;
    }

    public int getIdTypeProductFood() {
        return idTypeProductFood;
    }

    public void setIdTypeProductFood(int idTypeProductFood) {
        this.idTypeProductFood = idTypeProductFood;
    }
}
