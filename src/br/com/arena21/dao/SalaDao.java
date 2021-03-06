package br.com.arena21.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

public class SalaDao {

	//Vari�vel contendo a conex�o
	private Connection conexao;
	
	//Construtor

	//M�todo para retornar as salas
	public String exibindoSalas(){
		

		//Estrutura
		String estrutura = "";

		//Tenta executar a a��o
		try{
		
		//SQL
		String sql = "SELECT * FROM salas";
		
		//Obter dados das salas
		Statement stmt = this.conexao.createStatement();
		ResultSet rs = stmt.executeQuery(sql);
		int indice = 0;
			while(rs.next()){
				
				if(indice % 4 == 0){
					estrutura +="<div class='row'>";
				}
				
						estrutura += "<div class='container'>";
						estrutura += "<div class='col-md-3' id='thumbImage'>";				
						estrutura += "<tr>Jogo: <td>"+rs.getString("nomeJogo")+"</td></tr>";
						estrutura += "<tr>Sala: <td>"+rs.getString("nomeSala")+"</td></tr>";
						estrutura += "</div>";		
						estrutura += "</div>";
						estrutura += "<button class='btn btn-primary' id='botaoEntrar'>Entrar</button>";

				
			if(indice % 4 == 0){
				estrutura +="</div'>";
			}
			
			//Incrementar o �ndice
			indice++;
			
			}
			
		}catch(Exception e){
			
		}
		
		//Retorno
		return estrutura;
		
	}


}
