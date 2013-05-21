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
<title>BlackMondayStore - Cadastro Cliente</title>
</head>
<body>
	<img SRC='../imagens/Black-Monday.jpg'
		style="height: 74px; width: 765px" />
	<h1>Cadastro Cliente</h1>

	<form name='formularioPagamento' method='post' action='/validaPedido'>

		<table style="width: =">
			<tr>
				<td class='tituloform'>Dados pessoais</td>
			</tr>
			<tr>
				<td class='gridTopico'>
					<table style="width: =" border='1'>
						<tr>
							<td style="width: =" class='gridTopico'>Login</td>
							<td style="width: =" class='gridTopico'><input name='login'
								type='text' size='20'></td>
						</tr>
						<tr>
							<td style="width: =" class='gridTopico'>Senha</td>
							<td style="width: =" class='gridTopico'><input name='senha'
								type="password" size='20'></td>
						</tr>
						<tr>
							<td style="width: =" class='gridTopico'>Nome</td>
							<td style="width: =" class='gridTopico'><input name='nome'
								type='text' size='80'></td>
						</tr>
						<tr>
							<td class='gridTopico'>CPF</td>
							<td class='gridTopico'><input name='cpf' type='text'
								size='80'></td>
						</tr>
						<tr>
							<td class='gridTopico'>e-mail</td>
							<td class='gridTopico'><input name='email' type='text'
								size='80'></td>
						</tr>
						<tr>
							<td class='gridTopico'>Telefone</td>
							<td class='gridTopico'><input name='telefone' type='text'></td>
						</tr>

					</table>
				</td>
			</tr>
			<tr>
				
				<td colspan="2"><input type="submit" value="Continuar" /></td>
			</tr>
		</table>

	</form>
</body>
</html>