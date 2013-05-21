package br.com.fiap.servlet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import br.com.fiap.beans.CarrinhoCompras;
import br.com.fiap.beans.Item;
import br.com.fiap.beans.Produto;
import br.com.fiap.control.dao.ProdutoDAO;


public class GerenciadorCompras {

       

    public GerenciadorCompras() {
        super();
    }

    private Produto getProdutoSelecionado(HttpServletRequest request) throws ServletException {
        String strIdProduto = request.getParameter("id");
        Produto prod = new Produto();
        ProdutoDAO dao = new ProdutoDAO();

        try {
            int id = Integer.parseInt(strIdProduto);
            prod = dao.getProdutoById(id);
            System.out.println("[AdicionarProdutoCarrinho:getProdutoSelecionado] Produto selecionado ");
            System.out.println(prod);
        } catch (Exception e) {
            throw new ServletException(e);
        }
        return prod;

    }
    
    public void adicionarProdutoCarrinho(HttpServletRequest request) throws ServletException{
        Produto produtoSelecionado = getProdutoSelecionado(request);
        System.out.println(produtoSelecionado);
       
        // Criando um novo item com o produto selecionado, quantidade igual a 1
        Item item = new Item(produtoSelecionado, 1);
        CarrinhoCompras carrinho = null;

        HttpSession session = request.getSession();
        carrinho = (CarrinhoCompras) session.getAttribute("carrinhoCompras");
        
       // se o carrinho de compras ainda não existe ...
        // Criando o objeto carrrinho de compras
        // passando o item como parametro no construtor
        if (carrinho == null) { 
            carrinho = new CarrinhoCompras(item);
            session.setAttribute("carrinhoCompras", carrinho);
        } else { // se o carrinho de compras ja existe ...
            // Adicionando o item no carrinho atraves do metodo addItem
            carrinho.addItem(item);
        }
    }
    

}
