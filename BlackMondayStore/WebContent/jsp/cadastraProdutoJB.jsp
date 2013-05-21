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
	<img SRC='../imagens/Black-Monday.jpg'
		style="height: 74px; width: 765px" />
	<h1>Cadastro de Produtos</h1>
	
	<jsp:useBean id="produtos" class="br.com.fiap.beans.Produto" />
	<jsp:setProperty property="codigo" name="produtos"		value="${param.codigo }" />
	<jsp:setProperty property="nome" name="produtos"		value="${param.nome }" />
	<jsp:setProperty property="descricao" name="produtos" value="${param.descricao }" />
	<jsp:setProperty property="imagem" name="produtos" value="${param.imagem }" />
	<jsp:setProperty property="categoria" name="produtos" value="${param.categoria }" />
	<jsp:setProperty property="preco" name="produtos" value="${param.preco }" />
    <jsp:setProperty property="promocao" name="produtos" value="${param.promocao }" />
    
	<jsp:getProperty property="cadastro" name="produtos" />


</body>
</html>