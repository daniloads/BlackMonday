<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href='../loja.css' rel='stylesheet' type='text/css'></link>
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
<title>BlackMondayStore - Identificação</title>
</head>
<body>
	<img SRC='../imagens/Black-Monday.jpg'
		style="height: 74px; width: 765px" />
	<h1>Identificação</h1>
	<form action="validaLogin" method="post">
		<table style="width: =">
			<td class='gridTopico'>
				<table>
					<tr>
						<td>Usuário:</td>
						<td><input type="text" name="usuario" size="20" /></td>
					</tr>
					<tr>
						<td>Senha:</td>
						<td><input type="password" name="senha" size="20" /></td>
					</tr>
					<tr>
						<td></td>
						<td colspan="2"><input type="submit" value="Validar" /></td>
					</tr>
				</table>
			</td>
		</table>
	</form>
</body>
</html>