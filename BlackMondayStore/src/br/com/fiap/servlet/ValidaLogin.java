package br.com.fiap.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import br.com.fiap.beans.Cliente;
import br.com.fiap.control.dao.ClienteDAO;



@WebServlet("/jsp/validaLogin")
public class ValidaLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ValidaLogin() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Cliente cliente = new Cliente();
		ClienteDAO dao = new ClienteDAO();
		
		try {
			cliente = dao.getValidaUsuario(request.getParameter("login"), request.getParameter("senha"));
			if(!(cliente.getNome()==null)){
				
				HttpSession session = request.getSession();
				session.setAttribute("jCliente", cliente);
				response.sendRedirect("menu.jsp");
				
			}else{
				response.sendRedirect("erroLogin.jsp");
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
