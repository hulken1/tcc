package br.com.arena21.connection;

import java.sql.Connection;
import java.sql.DriverManager;

public class conexao {

	//Método para retornar a conexão
	public static Connection obterConexao(){
		
		//Variável contendo a conexão
		Connection conexao = null;
		
		//Tentar obter a conexão
		try{
			Class.forName("com.mysql.jdbc.Driver");
			conexao = DriverManager.getConnection("jdbc:mysql://localhost:8080/arena21","root","");
		}catch (Exception e) {
			System.out.println("FODEU "+e.getMessage());
		}
		
		//Retorno
		return conexao;
		
	}
	
}
