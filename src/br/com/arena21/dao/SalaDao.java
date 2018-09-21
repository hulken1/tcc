package br.com.arena21.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;



import br.com.arena21.bean.CadastroSalaBEAN;
import br.com.arena21.connection.conexao;

public class SalaDao {

	//Variável contendo a conexão
	private Connection conexao;
	
	//Construtor

	//Método para retornar as salas
	public String exibirSalas(){
		

		//Estrutura
		String estrutura = "";

		//Tenta executar a ação
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
						estrutura +="<div class='mix' style:display:none>";
						estrutura +="<ul>";
						estrutura +="<li >"+rs.getString("nomeSala")+"</li>";
						estrutura += "<li class='title' class='texto'>"+rs.getString("nomeJogo")+"</li>"; 						
						estrutura += "</ul>";
						estrutura += "</div";
						estrutura += "</div>";									                     					
						estrutura += "</div>";
						estrutura += "<button class='btn btn-primary' id='botaoEntrar'>Entrar</button>";
			
				
			if(indice % 4 == 0){
				estrutura +="</div'>";
			}
			
			//Incrementar o índice
			indice++;
			
			}
			
		}catch(Exception e){
			
		}
		
		//Retorno
		return estrutura;
		
	}


}
