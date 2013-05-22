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

      <form name='formularioPagamento' method='post' action='validaPedido' >

            <table style="width: = 80%">
                <tr>
                    <td class='tituloform'>Dados pessoais</td>
                </tr>
                <tr>
                    <td class='gridTopico'>
                        <table style="width: = 100%" border='1' >
                            <tr>
                                <td style="width: = 16%" class='gridTopico'>Nome</td>
                                <td style="width: = 84%" class='gridTopico'><input name='nome' type='text'
                                                                          size='80'></td>
                            </tr>
                            <tr>
                                <td class='gridTopico'>CPF</td>
                                <td class='gridTopico'><input name='cpf' type='text' size='80'></td>
                            </tr>
                            <tr>
                                <td class='gridTopico'>e-mail</td>
                                <td class='gridTopico'><input name='email' type='text' size='80'></td>
                            </tr>
                            <tr>
                                <td class='gridTopico'>Telefone</td>
                                <td class='gridTopico'><input name='telefone' type='text'></td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td><span class='tituloform'><br>
                        Endere&ccedil;o de entrega</span><br>
                    </td>
                </tr>

                <tr>
                    <td bgcolor='#FFFFFF' class='gridTopico'>
                        <table style="width: = 100%" border='1'>
                            <tr>
                                <td class='gridTopico'>Rua/Av</td>
                                <td class='gridTopico'><input name='rua' type='text' size='60'></td>
                                <td class='gridTopico'>N&uacute;mero</td>
                                <td class='gridTopico'><input name='numero' type='text' size='5'></td>
                            </tr>
                            <tr>
                                <td class='gridTopico'>Bairro</td>
                                <td class='gridTopico'><input name='bairro' type='text' size='60'></td>
                                <td class='gridTopico'>Cidade</td>
                                <td class='gridTopico'><input name='cidade' type='text'></td>
                            </tr>
                            <tr>
                                <td class='gridTopico'>Estado</td>
                                <td class='gridTopico'><input name='estado' type='text' size='60'></td>
                                <td class='gridTopico'>CEP</td>
                                <td class='gridTopico'><input name='cep' type='text'></td>
                            </tr>
                        </table>
                    </td>
                </tr>


                <tr>
                    <td class='tituloform'><br>
                    Dados para pagamento</td>
                </tr>

                <tr>
                    <td bgcolor='#FFFFFF' class='gridTopico'>
                        <table style="width: = 100%" border='1' >
                            <tr class='gridTopico'>
                                <td width='25%'>Cart&atilde;o de cr&eacute;dito</td>
                                <td width='75%'><select name='tipo'>
                                        <option value='Visa' selected>visa</option>
                                        <option value='Master Card'>mastcard</option>
                                        <option value='American Express'>amex</option>
                                </select></td>
                            </tr>
                            <tr class='gridTopico'>
                                <td>N&uacute;mero do cart&atilde;o</td>
                                <td><input name='numeroCartao' type='text' size='30'></td>
                            </tr>
                            <tr class='gridTopico'>
                                <td>Data Validade</td>
                                <td><input name='dataValidade' type='text' size='10'></td>
                            </tr>
                        </table>
                    </td>
                </tr>

                <tr>
                    <td class='tituloform'><br>
                    <input type='submit' value='submit'></td>
                </tr>

            </table>

        </form>
</body>
</html>