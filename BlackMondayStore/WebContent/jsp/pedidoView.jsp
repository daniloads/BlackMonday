<%@page import="br.com.fiap.beans.*"%>
<%@page import="java.util.*"%>
<%@page import="java.text.*"%>
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
<title>BlackMondayStore - Pedido de Compra</title>
</head>
   <body>
   	<img SRC='../imagens/Black-Monday.jpg' style="height: 74px; width: 765px"/>
        <H3>Dados do Pedido</H3>


        <table style="width: = 80%">
            <tr>
                <td class="tituloCampo">Dados pessoais</td>
            </tr>
            <tr>
                <td>
                    <table style="width: = 100%" border="1">
                        <tr>
                            <td width="16%" class="tituloform">Nome</td>
                            <td width="84%" class="gridCampo"> <%=request.getParameter("nome")%> </td>
                        </tr>
                        <tr>
                            <td class="tituloform">CPF</td>
                            <td class="gridCampo"> <%=request.getParameter("cpf")%> </td>
                        </tr>
                        <tr>
                            <td class="tituloform">e-mail</td>
                            <td class="gridCampo"> <%=request.getParameter("email")%> </td>
                        </tr>
                        <tr>
                            <td class="tituloform">Telefone</td>
                            <td class="gridCampo"> <%=request.getParameter("telefone")%> </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td class="tituloCampo">Endere&ccedil;o de entrega <br>
                </td>
            </tr>

            <tr>
                <td bgcolor="#FFFFFF">
                    <table style="width: = 100%" border="1">
                        <tr>
                            <td class="tituloform">Rua/Av</td>
                            <td class="gridCampo"> <%=request.getParameter("rua")%> </td>
                            <td class="tituloform">N&uacute;mero</td>
                            <td class="gridCampo"> <%=request.getParameter("numero")%> </td>
                        </tr>
                        <tr>
                            <td class="tituloform">Bairro</td>
                            <td class="gridCampo"> <%=request.getParameter("bairro")%> </td>
                            <td class="tituloform">Cidade</td>
                            <td class="gridCampo"> <%=request.getParameter("cidade")%> </td>
                        </tr>
                        <tr>
                            <td class="tituloform">Estado</td>
                            <td class="gridCampo"> <%=request.getParameter("estado")%> </td>
                            <td class="tituloform">CEP</td>
                            <td class="gridCampo"> <%=request.getParameter("cep")%> </td>
                        </tr>
                    </table>
                </td>
            </tr>


            <tr>
                <td class="tituloCampo">Dados para pagamento</td>
            </tr>

            <tr>
                <td bgcolor="#FFFFFF">
                    <table style="width: = 100%" border="1">
                        <tr>
                            <td width="25%" class="tituloform">Cart&atilde;o de cr&eacute;dito</td>
                            <td width="75%" class="gridCampo"> <%=request.getParameter("tipo")%> </td>
                        </tr>
                        <tr>
                            <td class="tituloform">N&uacute;mero do cart&atilde;o</td>
                            <td class="gridCampo"> <%=request.getParameter("numeroCartao")%> </td>
                        </tr>
                        <tr>
                            <td class="tituloform">Data Validade</td>
                            <td class="gridCampo"> <%=request.getParameter("dataValidade")%> </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>

        <%
        CarrinhoCompras carrinho = (CarrinhoCompras) session.getAttribute("carrinhoCompras");
        List<Item> itens = carrinho.getItems();
        %>

        <H3>Items do Pedido</H3>
        <TABLE style="width: = 100%" border='1' >
            <TR>
                <TD width='%10' class='tituloCampo'>Nome</TD>
                <TD width='%10' class='tituloCampo'>Codigo</TD>
                <TD width='%20' class='tituloCampo'>Descri&ccedil;&atilde;o</TD>
                <TD width='%5' class='tituloCampo'>Quantidade</TD>
                <TD width='%35' class='tituloCampo'>Pre&ccedil;o</TD>
            </TR>

            <%
        NumberFormat formatadorMoeda = NumberFormat.getCurrencyInstance();
        String valorTotal = formatadorMoeda.format(carrinho.calcularValorTotal());
        for (Item item : itens) {
            Produto p = item.getProduto();
            String preco = formatadorMoeda.format(p.getPreco());
            %>
            <TR>
                <TD style="width: = 10%" class='gridCampo'><%=p.getNome()%></TD>
                <TD style="width: = 10%" class='gridCampo'><%=p.getCodigo()%></TD>
                <TD style="width: = 20%" class='gridCampo'><%=p.getDescricao()%></TD>
                <TD style="width: = 5%" class='gridCampo'><%=item.getQuantidade()%></TD>
                <TD style="width: = 35%" class='gridCampo'><%=preco%> (preco unid.)</TD>
            </TR>
            <%
        } // end for
%>
            <TR>
                <TD align='right' colspan='6' class='tituloform'><%=valorTotal%></TD>
            </TR>
            <tr>
			<td align='right' colspan='7' class='tituloform'><a
				HREF='/BlackMondayStore/jsp/iniciaProcesso'>Fim</a></td>
		</tr>
        </TABLE>

    </body>
</html>