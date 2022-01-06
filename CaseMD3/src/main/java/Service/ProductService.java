package Service;

import DAO.CRUDDrink;
import DAO.CRUDProduct;
import Model.Products.ProductDrink;
import Model.Products.ProductFood;

import java.util.List;

public class ProductService {
    public static List<ProductFood> getAll(){
        return CRUDProduct.getAll();
    }
    public static List<ProductFood> getBo(){
        return CRUDProduct.getBo();
    }
    public static List<ProductFood> getGa(){
        return CRUDProduct.getGa();
    }
    public static List<ProductDrink> getAll1(){
        return CRUDDrink.getAllDrink();
    }
    public void saveProduct(ProductFood productFood){CRUDProduct.saveProduct(productFood);
    }
    public void saveProductDrink(ProductDrink productDrink){CRUDDrink.saveProductDrink(productDrink);
    }


}
