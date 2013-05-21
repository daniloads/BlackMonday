package br.com.fiap.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import br.com.fiap.beans.Cliente;


@WebServlet("/jsp/finalizaCompra")
public class FinalizaCompra extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public FinalizaCompra() {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		Cliente cliente = (Cliente)session.getAttribute("jCliente");
		if(cliente==null){
			System.out.println("Cliente Null");
			response.sendRedirect("loginCliente.jsp");
		}else{
			System.out.println("Cliente não é null");
			response.sendRedirect("loginCliente.jsp");;
		}
	}

}
