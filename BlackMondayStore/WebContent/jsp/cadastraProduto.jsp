<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href='../loja.css' rel='stylesheet' type='text/css'></link>
<title>BlackMondayStore - Cadastra Produtos</title>
</head>
<body>
	<IMG SRC='../imagens/Black-Monday.jpg'
		style="height: 74px; width: 765px" />
	<h1>Cadastro de Produtos</h1>
	<form action="cadastraProdutoJB.jsp" method="post">
		<table>
			<tr>
				<td>Código:</td>
				<td><input type="text" name="codigo" size="60" /></td>
			</tr>
			<tr>
				<td>Nome:</td>
				<td><input type="text" name="nome" size="60" /></td>
			</tr>
			<tr>
				<td>Descrição:</td>
				<td><input type="text" name="descricao" size="60" /></td>
			</tr>
			<tr>
				<td>Imagem:</td>
				<td><input type="text" name="imagem" size="60" /></td>
			</tr>
			<tr>
				<td>Categoria:</td>
				<td><select name="categoria"  size="4">
						<option value="Eletronicos">Eletrônicos</option>
						<option value="CDs">CDs</option>
						<option value="Casa">Casa</option>
						<option value="Livros">Livros</option>
				</select></td>
			</tr>
			<tr>
				<td>Preço:</td>
				<td><input type="text" name="preco" size="60" /></td>
			</tr>
			<tr>
				<td>Promocão:</td>
				<td><select name="Promocao" size="2">
						<option value="0">Sim</option>
						<option value="1">Não</option>
				</select></td>
			</tr>
			<tr>
				<td></td>
				<td colspan="2"><input type="submit" value="Enviar" /></td>
			</tr>
		</table>
	</form>
</body>
</html>