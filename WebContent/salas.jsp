<!Doctype html>
<%@page import="br.com.arena21.dao.SalaDao"%>
<html lang="pt-br" class="no-js">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700' rel='stylesheet' type='text/css'>

    <link rel="stylesheet" href="css/reset.css">
    <!-- CSS reset -->
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/padrao.css">
    <link rel="stylesheet" href="css/pesquisa.css">


    <!-- Resource style -->

    <!-- Modernizr -->

    <title>Salas Jogos</title>
</head>

<body>
    <div id="background"></div>
    <div class="container-fluid">

        <!-- Topo -->
        <div class="row">
            <div class="col-md-12">
                <nav class="row navtop col-md-12">
                    <a href="index.html">
                        <img src="imagens/logo/coliseu2.png" class="imgsite">
                    </a>
                </nav>
            </div>
        </div>

        <main class="cd-main-content">
            <div class="cd-tab-filter-wrapper">
                <div class="cd-tab-filter">
                    <ul class="cd-filters">
                        <li class="placeholder">
                            <a data-type="all" href="#">All</a>
                            <!-- selected option on mobile -->
                        </li>
                        <li class="filter"><a class="selected" href="#" data-type="all">Todas Salas</a></li>
                        <li class="filter" data-filter=".aberta"><a href="#" data-type="color-1">Aberta</a></li>
                        <li class="filter" data-filter=".privada"><a href="#" data-type="color-2">Privada</a></li>
                      
                    </ul>
                    <!-- cd-filters -->
                </div>
                <!-- cd-tab-filter -->
            </div>
            <!-- cd-tab-filter-wrapper -->

            <section class="cd-gallery">                 
                    <div class="container filtro">
                            
                            
       							 <%
                            		out.print(new SalaDao().exibirSalas());
                            	%>                            
                                        
							
                    </div>

                <div class="cd-fail-message">No results found</div>
            </section>
            <!-- cd-gallery -->

            <div class="cd-filter">
                <form>
                    <div class="cd-filter-block">
                        <h4>Procura</h4>

                        <div class="cd-filter-content cd-filters" >
                            <input type="text" id="input" class="filter-simple-button" value="" placeholder="Nome Jogo">
                        </div>
                        <!-- cd-filter-content -->
                    </div>
                    
                    <!-- cd-filter-block -->

                    <div class="cd-filter-block">
                        <h4>Encontre uma sala</h4>
                        <ul class="cd-filter-content cd-filters list">
                          
                            <div class="cd-filter-content">
                                <input type="search" placeholder="Nome da Sala">
                            </div>
                        
                        <!-- cd-filter-content -->
                    </div>
                    <!-- cd-filter-block -->

                    <div class="cd-filter-block">
                        <h4> Cidades </h4>
                        <div class="cd-filter-content">
                            <div id="cidadeEstado" class=" cd-filters">
                                        <select   id="estado1" value="Selecione Estado"></select>
                                        <select   id="cidade1" value="Selecione Cidade"></select>
                            </div>
                            <!-- cd-select -->
                        </div>
                        <!-- cd-filter-content -->
                    </div>
                    <!-- cd-filter-block --> 
                </form>
                <a href="#0" class="cd-close">Close</a>
            </div>
            <!-- cd-filter -->
            <a href="#0" class="cd-filter-trigger">Filtro</a>
        </main>
        <div>
                <footer>
                    <div class="container">
                        <div class="row">
                            <div class="col-sm-10">
                                <small>© 2018 Copyright:</small>
                                <strong>Ademilson 
                                        Adolfo
                                        Marcos
                                        Sergio
                                </strong>
                            </div>
        
                        </div>
                    </div>
                    
                </footer>
        </div>
                <a href="javascript:" id="return-to-top"><i class="glyphicon glyphicon-chevron-up"></i></a>
        <!-- cd-main-content -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="js/jquery.mixitup.min.js"></script>
        <script src="js/main.js"></script>
        <script src="js/padrao.js"></script>
        <script src="js/modernizr.js"></script>
        <script language="JavaScript" type="text/javascript" src="js/cidades-estados-utf8.js"></script>
        <!-- Resource jQuery -->
        <script language="JavaScript" type="text/javascript" charset="utf-8">
            new dgCidadesEstados({
              cidade: document.getElementById('cidade1'),
              estado: document.getElementById('estado1')
            })
          </script>
         
        	       <script>
        	       $('.filter-simple-button').on("keyup",function() {
        	        	  var value = $(this).attr('data-filter');
        	        	  if(value === "all") {
        	        	    $('.filter-simple-item').show('1000');
        	        	  } else {
        	        	    $('.filter-simple-item').not('.'+value).hide('3000');
        	        	    $('.filter-simple-item').filter('.'+value).show('3000');
        	        	  }
        	        	});

        	        	// changes active class on filter buttons
        	        	$('.filter-simple-button').on("keyup",function () {
        	        	  $(this).siblings().removeClass('is-active');
        	        	  $(this).addClass('is-active');
        	        	});
</script>
</body>

</html>