package Controller.AccountServlet;

import Model.Account.Accounts;
import Service.AccountsService.AccountsService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
@WebServlet(urlPatterns = "/viewLogin")
public class AccountsServlet extends HttpServlet {
    AccountsService accountsService = new AccountsService();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");
        RequestDispatcher dispatcher;

        if (action == null) {
            action = "";
        }

        switch (action) {
            default:
                dispatcher= req.getRequestDispatcher("/view/login.jsp");
        }
        dispatcher.forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");
        RequestDispatcher dispatcher;
        HttpSession session = req.getSession();

        if (action == null) {
            action = "";
        }

        switch (action) {
            case "login":{
                String username = req.getParameter("userLogin");
                String password = req.getParameter("passLogin");
                Accounts acc = accountsService.searchAcc(username, password);

                if (acc == null) {
                    resp.sendRedirect("/view/login.jsp");
                }
                else {
                    session.setAttribute("acc" ,acc);
                    resp.sendRedirect("/home.jsp");
                }
            }
            break;
            case "sign":{
                String userSign = req.getParameter("userSign");
                String passSign1 = req.getParameter("passSign1");

                String phone = req.getParameter("phone");
                if (passSign1.equals(passSign2) == false) {
                    req.setAttribute("message", "Kiem tra lai password");
                    dispatcher = req.getRequestDispatcher("/view/login.jsp");
                    dispatcher.forward(req,resp);
                }
                else {
                    Accounts account = new Accounts(userSign, passSign1, phone);
                    accountsService.createAcc(account);
                    resp.sendRedirect("/viewLogin");
                }
            }

            break;
            default:
                dispatcher = req.getRequestDispatcher("/view/login.jsp");
                dispatcher.forward(req,resp);
                break;
        }

    }
}
