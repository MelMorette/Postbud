<%@page import="hibernatePersistent.usuario.Usuario"%>
<%@page import="Servlet.BuscaCarta"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    Usuario user = (Usuario)session.getAttribute("User");
    
    if(user == null)
    {
        response.sendRedirect("login.jsp");
    }
    else
    {

%>
    <!DOCTYPE html>
    <html lang="br">

        <head>
            <meta charset="utf-8">
            <title>Perfil Postbud</title>

            <!-- Google Fonts -->
            <link href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700|Lato:400,100,300,700,900' rel='stylesheet' type='text/css'>
            <link rel="icon" href="images/logo.png" type="image/x-icon" />
            <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
            
            <link rel="stylesheet" href="css/animate.css">
            <!-- Custom Stylesheet -->
            <link rel="stylesheet" href="css/style.css">

            <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
        </head>

        <body>
            <div class="container">
                <div class="top">
                    <h1 id="title" class="hidden"><span id="logo">Post<strong>bud</strong></span></h1>
                </div>
                <div class="login-box animated fadeInUp">
                    <div class="box-header">
                        <div class="login w3l">	
                            <div class="modal-content modal-info">

                                <div class="modal-header">
                                    <h2><strong>Bem-Vindo(a) - <%=user.getNome()%></strong></h2>							
                                    <img src="images/foto.png" title="user" alt="user" />
                                </div>							
                            </div>
                                    <ul>
                                       <li><img src="images/whrite.png"/><a href="carta.jsp"><button type="submit"><strong>Escrever...</strong></button></a></li>            
                                       <li><img src="images/send.png"/><a href="outbox.jsp"><button type="submit"><strong>Enviado!</strong></button></a></li> 
                                       <li><img src="images/recebe.png"/><a href="inbox.jsp"><button type="submit"><strong>Recebido!</strong></button></a></li> 
                                    </ul>
                            	
                        </div>

                        <form action="Logout" method="post">
                            <button type="submit"><strong>Sair</strong></button>
                        </form>
                    </div>
                     <div class="conf">
                        <a href="#"><img src="images/conf.png"/></a>
                     </div>
                </div>				
            </div>
              <div class="bloco">
                <ul class="redes">
                    <p><strong>Siga-nos nas Redes Sociais!</strong></p>
                    <a href="http://www.facebook.com.br" class="facebook"><img src="images/fb.png" title="facebook" alt="facebook" /></a>
                    <a href="http://www.twitter.com.br" class="twitter"><img src="images/tw.png" title="twitter" alt="twitter" /></a>
                    <a href="http://www.googleplus.com.br" class="googleplus"><img src="images/gp.png" title="googleplus" alt="googleplus" /></a>
                </ul>
            </div>
            	

        </body>

        <script>
            $(document).ready(function () {
                $('#logo').addClass('animated fadeInDown');
                $("input:text:visible:first").focus();
            });
            $('#username').focus(function () {
                $('label[for="username"]').addClass('selected');
            });
            $('#username').blur(function () {
                $('label[for="username"]').removeClass('selected');
            });
            $('#password').focus(function () {
                $('label[for="password"]').addClass('selected');
            });
            $('#password').blur(function () {
                $('label[for="password"]').removeClass('selected');
            });
        </script>

    </html>

<%
    }
%>