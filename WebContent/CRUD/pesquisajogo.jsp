<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import=java.sql.*;
    import=br.com.arena21.dao.SalaDao;
    import=br.com.arena21.connection.conexao;
    %>
    
<%

    try{
       //Preparar o envio do parâmetro
         String pesquisajogo = String.valueOf(request.getParameter("nomeJogo"));
	
         //SQL
       String sql = "SELECT * FROM salas WHERE nomeJogo LIKE '%"+pesquisajogo+"%";

       //Preparar o envio do parâmetro
       PreparedStatement pstmt = conexao.obterConexao().prepareStatement(sql);
       pstmt.setString(1, "%"+pesquisajogo+"%");

      //Execução e laço de repetição         
       ResultSet rs = pstmt.executeQuery();


      while(rs.next()){
    	  
          //Sua estrutura contendo as imagens, textos e vídeos
          %>
          <tr>
          		<td><%=rs.getString("nomeJogo") %></td>
          		<td><%=rs.getString("nomeSala") %></td>
          
          </tr>
          
          <% 
      
    }
     
  }catch(Exception e){
        out.print("Falha");
  }

%>

