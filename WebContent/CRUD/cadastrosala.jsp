<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    
    import="java.sql.*"
    %>   
    <%
        	
            try{          	
            	String nomesala = request.getParameter("nomeSala");
                String nomejogador = request.getParameter("nomeJogador");
                
                
                String DRIVER = "com.mysql.jdbc.Driver";
                Class.forName(DRIVER).newInstance();
                
        		Connection con = null;
        		Statement stmt = null;
        		
            	String sql = "INSERT INTO salas(nomeSala,nomeJogo) VALUES('"+nomesala+"','"+nomejogador+"')";
            	
            	String url = "jdbc:mysql://localhost:3306/arena21";
            	String root = "root";
            	String pw = "";
            	con = DriverManager.getConnection(url,root,pw);
            	
            	stmt = con.createStatement();
            	stmt.executeUpdate(sql);
            	
            	
            }catch(Exception e){
            	out.print("Deu erro ao inserir"+e);
            }
        %>