<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="br.com.fiap.beans.*"%>
<%@page import="java.util.List"%>
<%@page import="java.text.NumberFormat"%>
<%
        CarrinhoCompras carrinho = (CarrinhoCompras) session.getAttribute("carrinhoCompras");
        List<Item> itens = carrinho.getItems();
        String contexto = request.getContextPath();
%>	
	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href='../loja.css' rel='stylesheet' type='text/css'></link>
<title>BlackMondayStore - Carrinho de Compras</title>
<style type="text/css">
.barNav a {
	font: 12px Arial, Verdana, Helvetica, sans-serif;
	color: white;
	text-decoration: none;
	background: black;
	text-align: center;
	padding: 1px 5px;
	margin-right: 1px;
	border: 1px solid #000;
}

.barNav a:hover {
	color: #666;
	background: white;
	border: 1px solid #666;
}
</style>
</head>
<body>
	<img SRC='../imagens/Black-Monday.jpg'
		style="height: 74px; width: 765px" />
	<h1>
		<i><small>Promoção é aqui na BlackMondayStore</small></i>
	</h1>
	<jsp:useBean id="Produtos" class="br.com.fiap.control.dao.ProdutoDAO"></jsp:useBean>
	<table style="width: 70%" border='1'>
		<tr>
			<td align='right' colspan='7' class='tituloform'>
			<a href="javascript: history.back();">Continuar compras</a>
			<a href="javascript: history.back();"> 
			<img src='../imagens/carrinho.jpg'/>
			</a></td>
		</tr>

		<tr>
			<td style="width: =" class='tituloCampo'>Imagem</td>
			<td style="width: =" class='tituloCampo'>Nome</td>
			<td style="width: =" class='tituloCampo'>Codigo</td>
			<td style="width: =" class='tituloCampo'>Descri&ccedil;&atilde;o</td>
			<td style="width: =" class='tituloCampo'>Quantidade</td>
			<td style="width: =" class='tituloCampo'>Pre&ccedil;o unid.</td>
			<td style="width: =" class='tituloCampo'>total</TD>
		</tr>

		<%
			NumberFormat formatadorMoeda = NumberFormat.getCurrencyInstance();
			for (Item item : itens) {
				Produto produto = item.getProduto();
				String preco = formatadorMoeda.format(produto.getPreco());
				String totalItem = formatadorMoeda.format(produto.getPreco()
						* item.getQuantidade());
		%>
		<tr>
			<td style="width: ="><img
				src='../imagens/<%=produto.getImagem()%>' /></td>
			<td style="width: =" class='gridCampo'><%=produto.getNome()%></td>
			<td style="width: =" class='gridCampo'><%=produto.getCodigo()%></td>
			<td style="width: =" class='gridCampo'><%=produto.getDescricao()%></td>
			<td style="width: =" class='gridCampo'><%=item.getQuantidade()%></td>
			<td style="width: =" class='gridCampo' align='right'><%=preco%></td>
			<td style="width: =" class='gridCampo' align='right'><%=totalItem%></td>
		</tr>
		<%
			} // end for
			String precoTotal = formatadorMoeda.format(carrinho
					.calcularValorTotal());
		%>
		<tr>
			<td align='right' colspan='7' class='tituloform'><%=precoTotal%></td>
		</tr>
		<tr>
			<td align='right' colspan='7' class='tituloform'><a
				HREF='<%=contexto%>/jsp/finalizaCompraView.jsp'>Finalizar
					Compra </a></td>
		</tr>
	</table>
</body>
</html>