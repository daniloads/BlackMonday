package br.com.fiap.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;




@WebServlet("/jsp/iniciaProcesso")
public class IniciaProcesso extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public IniciaProcesso() {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	       
	        HttpSession session = request.getSession();
        	session.setAttribute("carrinhoCompras", null);
            RequestDispatcher dispatcher = request.getRequestDispatcher("/jsp/listaPromocao.jsp");
            dispatcher.forward(request, response);
	}

}
