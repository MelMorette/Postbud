package Servlet;

import Carta.Carta;
import Carta.CartaDAO;
import hibernatePersistent.usuario.Usuario;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.hibernate.HibernateException;

@WebServlet(name = "CriarCarta", urlPatterns = {"/CriarCarta"})
public class CriarCarta extends HttpServlet {

      protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
          
          HttpSession session = request.getSession(true);

        CartaDAO cartaDAO = new CartaDAO();
        Carta carta = new Carta();
        
        Usuario user = (Usuario)session.getAttribute("User");
        
        carta.setCorpo(request.getParameter("editor1"));
        carta.setDestinatario(null);       
        carta.setRemetente(user.getNome());
        carta.setTitulo(request.getParameter("titulo"));
        
        boolean funciona = false;
        try {
            funciona = cartaDAO.addCarta(carta);
        } catch (HibernateException ex) {
            ex.printStackTrace();
            funciona = false;
        }

        if (funciona) {
            response.sendRedirect("perfil.jsp");
        } else {
            response.sendRedirect("perfil.jsp");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
