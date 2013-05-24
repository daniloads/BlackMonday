<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
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
<title>BlackMondayStore - Área Restrita</title>
</head>
<body>	
	<img SRC='../imagens/Black-Monday.jpg' style="height: 74px; width: 765px"/>
	<h1>Menu de Opções</h1>
	<p class="barNav">
		<br><a href="cadastraProduto.jsp">Cadastra Produto</a></br>
		<br><a href="listaPromocao.jsp">Lista Apenas Promoções</a></br>
		<br><a href="listaProdutos.jsp">Lista Todos os Produtos</a></br>
	</p>
</body>
</html>