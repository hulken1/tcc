package br.com.arena21.connection;

import java.sql.*;
import java.sql.DriverManager;

public class conexao {

	//M�todo para retornar a conex�o
	public static Connection getConnection() throws SQLException{
		
		//Vari�vel contendo a conex�o
		//Connection conexao = null;
		
		//Tentar obter a conex�o
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
