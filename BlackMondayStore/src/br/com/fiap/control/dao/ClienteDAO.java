package br.com.fiap.control.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import br.com.fiap.beans.Cliente;
import br.com.fiap.util.BlackMondayException;

public class ClienteDAO extends Dao {

	private final String INSERT_QUERY = "insert into blackmonday.cliente (login, senha, nome, cpf, telefone, email) values (?,?,?,?,?,?)";
	private final String SELECT_USER = "select * from blackmonday.cliente where login = ? and senha = ?";
	private final String SELECT_ALL = "select * from  blackmonday.cliente";
	
	
	public Cliente getValidaUsuario(String login, String senha) throws BlackMondayException, Exception{

		Cliente cliente = new Cliente();
        try {

            
        	abreConexao();
			st = cn.prepareStatement(SELECT_USER);
			st.setString(1, login);
			st.setString(2, senha);
			rs = st.executeQuery();

            if (rs.next()) {
            	cliente.setLogin(rs.getString("login"));
            	cliente.setSenha(rs.getString("senha"));
            	cliente.setNome(rs.getString("nome"));
            	cliente.setCpf(rs.getString("cpf"));
            	cliente.setTelefone(rs.getString("telefone"));
            	cliente.setEmail(rs.getString("email"));
            }
        } catch (SQLException e) {
            String msg = "[ClienteDAO][getValidaUsuario(String login, String senha)]: " + e.getMessage();
            BlackMondayException ge = new BlackMondayException(msg, e);
            throw ge;
        } finally {
        	cn.close();;
        }
        return cliente;
	}


	public String save(Cliente cliente) throws Exception {

		String msg = null;
		try {
			abreConexao();
            st = cn.prepareStatement(INSERT_QUERY);
            st.setString(1, cliente.getLogin());
            st.setString(2, cliente.getSenha());
            st.setString(3, cliente.getNome());
            st.setString(4, cliente.getCpf());
            st.setString(5, cliente.getTelefone());
            st.setString(6, cliente.getEmail());    
            int cont =  st.executeUpdate();
            
            if(cont==0){
            	msg = "Nenhum Cliente foi inserido!";
            }else
            {
            	msg = "Cliente cadastrado com sucesso!";
            }
            
            return msg;

		} catch (SQLException e) {
			String msg1 = "[ClienteDAO][save(Cliente cliente)]: " + e.getMessage();
			BlackMondayException ge = new BlackMondayException(msg1, e);
			throw ge;
		} finally {
			cn.close();
		}

	}
	
	public List<Cliente> getListaClientes() throws Exception {
		
        ResultSet rs = null;
        List<Cliente> listaClientes = new ArrayList<Cliente>();
        try {

        	abreConexao();
			st = cn.prepareStatement(SELECT_ALL);
			rs = st.executeQuery();
				
            while (rs.next()) {
            	Cliente cliente = new Cliente();
            	cliente.setLogin(rs.getString("login"));
            	cliente.setSenha(rs.getString("senha"));
            	cliente.setNome(rs.getString("nome"));
            	cliente.setCpf(rs.getString("cpf"));
            	cliente.setTelefone(rs.getString("telefone"));
            	cliente.setEmail(rs.getString("email"));
            	listaClientes.add(cliente);
            }
        } catch (SQLException e) {
            String msg = "[ClienteDAO][save(Cliente cliente)]: " + e.getMessage();
            BlackMondayException ge = new BlackMondayException(msg, e);
            throw ge;
        } finally {
        	cn.close();
        }
        return listaClientes;
	}

}
