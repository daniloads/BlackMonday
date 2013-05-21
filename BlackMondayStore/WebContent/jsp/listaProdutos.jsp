<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href='../loja.css' rel='stylesheet' type='text/css'></link>
<title>BlackMondayStore - Todos os Produtos</title>
<meta http-equiv='Content-Type' content='text/html; charset=UTF-8'>
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
	<p class="barNav">
		<a href="listaPromocao.jsp">Lista Promoção</a> <a
			href="menuUsuario.jsp">Area Restrita</a>
	</p>
	<h3>Suas compras na BlackMondayStore</h3>
	<jsp:useBean id="Produtos" class="br.com.fiap.control.dao.ProdutoDAO"></jsp:useBean>

	<table border='1'>
		<tr style="width: 100%" class='tituloCampo'>
			<td style="width: =">Imagem</td>
			<td style="width: =">Codigo</td>
			<td style="width: =">Nome</td>
			<td style="width: =">Descri&ccedil;&atilde;o</td>
			<td style="width: =">Pre&ccedil;o</td>
			<td style="width: =">Comprar</td>
		</tr>
		<c:forEach var="produto" items="${Produtos.catalogoProdutos}">
			<tr style="width: =">
				<td class='gridCampo'><img src='../imagens/${produto.imagem}' /></td>
				<td><a href='/detalheProduto?id=${produto.codigo}'>${produto.codigo}</a>
				<td><c:out value="${produto.nome}" />
				<td><c:out value="${produto.descricao}" /></td>
				<td><c:out value="${produto.precoFormatado}" /></td>
				<td><a href='adicionarProdutoCarrinho?id=${produto.id}'><img SRC='../imagens/carrinho.jpg' /></a></td>
			</tr>
		</c:forEach>
	</table>

</body>
</html>