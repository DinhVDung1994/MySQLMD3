import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
@WebServlet(name = "calculate", value = "/PriceSale")
public class calculate extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String nameProduct = req.getParameter("productName");
        double price = Double.parseDouble(req.getParameter("productPrice"));
        double sale = Double.parseDouble(req.getParameter("productSale"));

        double salePrice = (price*sale)/100;
        double totalprice = price - salePrice;

        PrintWriter writer = resp.getWriter();
        writer.println("Product: "+nameProduct);
        writer.println("Giá Ban Đầu: "+price);
        writer.println("Giá Được Giảm: "+salePrice);
        writer.println("Giá Sau Sale: "+totalprice);
    }
}
