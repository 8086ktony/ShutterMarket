package control;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet("/home")
public class HomeServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        // In futuro qui caricherai le promo dal DB tramite PromoDAO
        req.getRequestDispatcher("/WEB-INF/view/home.jsp").forward(req, resp);
    }
}