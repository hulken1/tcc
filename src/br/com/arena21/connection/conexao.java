package br.com.arena21.connection;

import java.sql.*;
import java.sql.DriverManager;

public class conexao {

	//Método para retornar a conexão
	public static Connection getConnection() throws SQLException{
		
		//Variável contendo a conexão
		//Connection conexao = null;
		
		//Tentar obter a conexão
		try{
			 Class.forName("com.mysql.jdbc.Driver");
			 //DriverManager.registerDriver(new com.mysql.jdbc.Driver());
	            return DriverManager.getConnection("jdbc:mysql://localhost/arena21", "root", "");
		}catch (Exception e) {
			   e.printStackTrace();
               throw new RuntimeException(e);
		}
	  
		
		
	}
	
}
