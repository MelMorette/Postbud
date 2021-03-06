/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import hibernatePersistent.usuario.Usuario;
import hibernatePersistent.usuario.UsuarioDAO;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.hibernate.HibernateException;

/**
 *
 * @author aluno
 */
@WebServlet(name = "EditarCarta", urlPatterns = {"/EditarCarta"})
public class EditarCarta extends HttpServlet {
  protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

      //TODO recuperar a cartinha da HttpSession
      //TODO recuperar as informações digitadas na página editarCarta.jsp
      //TODO chamar o método de editar/atualizarCarta q vc vai criar no CartaDAO
      //TODO sendRedirect para uma página de sucesso (carta editada.)
      
        UsuarioDAO usuarioDAO = new UsuarioDAO();
        Usuario usuario = new Usuario();

        usuario.setNome(request.getParameter("nome"));
        usuario.setSobrenome(request.getParameter("sobrenome"));
        usuario.setEmail(request.getParameter("email"));
        usuario.setSenha(request.getParameter("senha"));
       /** usuario.setAtivar(true);*/
        boolean funciona = false;
        try {
            funciona = usuarioDAO.addUsuario(usuario);
        } catch (HibernateException ex) {
            ex.printStackTrace();
            funciona = false;
        }

        if (funciona) {
            response.sendRedirect("login.jsp");
        } else {
            response.sendRedirect("erro.jsp");
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
