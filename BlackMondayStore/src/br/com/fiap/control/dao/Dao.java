package br.com.fiap.control.dao;
import java.sql.*;

public class Dao {
	private String url="jdbc:mysql://localhost:3306/blackmonday";
	protected Connection cn;
	protected PreparedStatement st;
	protected ResultSet rs;
	protected String erro;
	
	protected boolean abreConexao() throws Exception{
		try{
			Class.forName("com.mysql.jdbc.Driver");
			cn = DriverManager.getConnection(url,"root","dda123");
			return true;
		}
		catch(Exception ex){
			throw ex;
		}
	}
	
	protected void fechaConexao() throws Exception{
		cn.close();
	}


	
}
