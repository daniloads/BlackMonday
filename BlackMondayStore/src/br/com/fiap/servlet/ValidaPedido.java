package br.com.fiap.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import br.com.fiap.util.ValidadorPedido;


@WebServlet("/jsp/validaPedido")
public class ValidaPedido extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public ValidaPedido() {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 ValidadorPedido validador = new ValidadorPedido();
	        validador.validarPedido(request);
	        List<String> listaDeProblemas = (List<String>) request.getAttribute("problemas");

	        String destino = null;

	        if (listaDeProblemas.size() == 0) {
	        	
	        	
	            destino = "pedidoView.jsp";
	        } else {
	            destino = "listaProblemasPedido.jsp";
	        }

	        RequestDispatcher dispatcher = request.getRequestDispatcher(destino);
	        dispatcher.forward(request, response);
	}

}
