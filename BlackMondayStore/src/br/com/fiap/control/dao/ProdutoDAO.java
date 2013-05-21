package br.com.fiap.control.dao;



import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import br.com.fiap.beans.Produto;
import br.com.fiap.util.BlackMondayException;

public class ProdutoDAO extends Dao {
	
    private final String INSERT_QUERY = "insert into blackmonday.cliente (login, nome, descricao, imagem, categoria, preco, promocao) values (?,?,?,?,?,?,?)";
    private final String SELECT_ALL_QUERY = "select * from blackmonday.produto";
    private final String SELECT_BY_ID_QUERY = "select * from blackmonday.produto where id = ? ";
    private final String SELECT_PROMOCAO_QUERY = "select * from blackmonday.produto where promocao = ?";
 
    public String save(Produto p) throws Exception {
    	String msg = null;
		try {
        	abreConexao();
            st = cn.prepareStatement(INSERT_QUERY);
            st.setString(1, p.getCodigo());
            st.setString(2, p.getNome());
            st.setString(3, p.getDescricao());
            st.setString(4, p.getImagem());
            st.setString(5, p.getCategoria());
            st.setDouble(6, p.getPreco());
            st.setInt(7, p.getPromocao());
            
            int cont =  st.executeUpdate();
            
            if(cont==0){
            	msg = "Nenhum Produto foi inserido!";
            }else
            {
            	msg = "Produto cadastrado com sucesso!";
            }
            
            return msg;
            
            
        } catch (SQLException e) {
            String msg1 = "[ProdutosDB][save(Produto p)]: " + e.getMessage();
            BlackMondayException ge = new BlackMondayException(msg1, e);
            throw ge;
        } finally {
        	cn.close();
        }
    }
    
    
	public List<Produto> getCatalogoProdutos() throws Exception {
		
	        ResultSet rs = null;
	        List<Produto> listaProdutos = new ArrayList<Produto>();
	        try {

	        	abreConexao();
				st = cn.prepareStatement(SELECT_ALL_QUERY);
				rs = st.executeQuery();
				
				//id, codigo, nome, descricao, imagem, categoria, preco, promocao
				
	            while (rs.next()) {
	            	Produto produto = new Produto();
	            	produto.setId(rs.getInt("id"));
	            	produto.setCodigo(rs.getString("codigo"));
	            	produto.setNome(rs.getString("nome"));
	            	produto.setDescricao(rs.getString("descricao"));
	            	produto.setImagem(rs.getString("imagem"));
	            	produto.setCategoria(rs.getString("categoria"));
	            	produto.setPreco(rs.getDouble("preco"));
	            	produto.setPromocao(rs.getInt("promocao"));
	            	listaProdutos.add(produto);
	            }
	        } catch (SQLException e) {
	            String msg = "[ProdutosDB][getCatalogoProdutos()]: " + e.getMessage();
	            BlackMondayException ge = new BlackMondayException(msg, e);
	            throw ge;
	        } finally {
	        	cn.close();
	        }
	        return listaProdutos;
	}

	public List<Produto> getPromocaoProdutos() throws Exception {
		
        ResultSet rs = null;
        List<Produto> listaProdutos = new ArrayList<Produto>();
        try {


        	abreConexao();
			st = cn.prepareStatement(SELECT_PROMOCAO_QUERY);
			st.setInt(1, 1);
			rs = st.executeQuery();
			
            while (rs.next()) {
            	Produto produto = new Produto();
            	produto.setId(rs.getInt("id"));
            	produto.setCodigo(rs.getString("codigo"));
            	produto.setNome(rs.getString("nome"));
            	produto.setDescricao(rs.getString("descricao"));
            	produto.setImagem(rs.getString("imagem"));
            	produto.setCategoria(rs.getString("categoria"));
            	produto.setPreco(rs.getDouble("preco"));
            	produto.setPromocao(rs.getInt("promocao"));
            	listaProdutos.add(produto);
            }
        } catch (SQLException e) {
            String msg = "[ProdutosDB][getCatalogoProdutos()]: " + e.getMessage();
            BlackMondayException ge = new BlackMondayException(msg, e);
            throw ge;
        } finally {
        	cn.close();
        }
        return listaProdutos;
}
	
	public Produto getProdutoById(int id) throws BlackMondayException, Exception{

        Produto produto = new Produto();
        try {

            
        	abreConexao();
			st = cn.prepareStatement(SELECT_BY_ID_QUERY);
			st.setInt(1, id);
			rs = st.executeQuery();

            if (rs.next()) {
            	produto.setId(rs.getInt("id"));
            	produto.setCodigo(rs.getString("codigo"));
            	produto.setNome(rs.getString("nome"));
            	produto.setDescricao(rs.getString("descricao"));
            	produto.setImagem(rs.getString("imagem"));
            	produto.setCategoria(rs.getString("categoria"));
            	produto.setPreco(rs.getDouble("preco"));
            	produto.setPromocao(rs.getInt("promocao"));
            }
        } catch (SQLException e) {
            String msg = "[ProdutosDB][getProdutoById()]: " + e.getMessage();
            BlackMondayException ge = new BlackMondayException(msg, e);
            throw ge;
        } finally {
        	cn.close();;
        }
        return produto;
	}



}
