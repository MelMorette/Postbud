<%@page import="Carta.Carta"%>
<!DOCTYPE html>
<html lang="br">

    <head>
        <meta charset="utf-8">
        <title>Carta Postbud</title>

        <!-- Google Fonts -->
        <link href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700|Lato:400,100,300,700,900' rel='stylesheet' type='text/css'>
        <link rel="icon" href="images/logo.png" type="image/x-icon" />
        <link rel="stylesheet" href="css/animate.css">
        <!-- Custom Stylesheet -->
        <link rel="stylesheet" href="css/carta.css">

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
        <script src="//cdn.ckeditor.com/4.5.11/standard/ckeditor.js"></script>
    </head>
    
<%
    Carta carta = (Carta) session.getAttribute("cartinha");
%>

    <body>
        <div class="container">
            <div class="top">
                <h1 id="title" class="hidden"><span id="logo">Post<span>bud</span></span></h1>
                
                <form action="CriarCarta" method="post">
                    <div class="carta center">
                        <label for="titulo">Título da Carta</label><br/>
                        <input type="text" id="titulo" name="titulo" value="<%=carta.getTitulo()%>"><br/><br/>        
                        
                        <textarea name="editor1"><%=carta.getCorpo()%></textarea>
                        <script>
                            CKEDITOR.replace('editor1');
                        </script>

                        <br><br>
                        <button type="submit"><strong>Reenviar</strong></button>
                    </div>    
                </form>
            </div>
        </div>
        <div class="luna">
            <img src="images/luna.png"></img>		
        </div>
        <div class="icone">
            <img src="images/ícone.png"></img>
        </div>
    </body>

    <script>
	$(document).ready(function () {
    	$('#logo').addClass('animated fadeInDown');
    	$("input:text:visible:first").focus();
	});
	$('#username').focus(function() {
		$('label[for="username"]').addClass('selected');
	});
	$('#username').blur(function() {
		$('label[for="username"]').removeClass('selected');
	});
	$('#password').focus(function() {
		$('label[for="password"]').addClass('selected');
	});
	$('#password').blur(function() {
		$('label[for="password"]').removeClass('selected');
	});
</script>
    
    <style>
        .carta {
            background-image: url(images/carta);
            background-repeat: no-repeat;
            
            -webkit-background-size: cover;
            -moz-background-size: cover;
            -o-background-size: cover;
            background-size: cover;
            
            width: 50%;
            padding: 6% 3% 6% 3%;
        }
        
        .center {
            text-align: center;
            margin-left: 15%;
        }
    </style>

</html>