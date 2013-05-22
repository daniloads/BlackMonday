<%@page contentType="text/html" import="java.util.List"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href='../loja.css' rel='stylesheet' type='text/css'></link>
<title>Problemas no processamnteo do pedido</title>
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
	<h3>Alguns problemas foram encontrados nos dados informados</h3>
	<h4>Por favor verifique:</h4>
	<hr />
	<%
		List<String> problemas = (List<String>) request.getAttribute("problemas");
		for (String problema : problemas) {
	%>
	<ul class="gridCampo"><%=problema%></ul>
	<%
		}
	%>
	<hr />
	<a href="javascript: history.back();" class="tituloform">voltar e corrigir</a>

</body>
</html>
