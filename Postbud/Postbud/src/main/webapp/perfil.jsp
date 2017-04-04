<%@page import="hibernatePersistent.usuario.Usuario"%>
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

            <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
            
            <link rel="stylesheet" href="css/animate.css">
            <!-- Custom Stylesheet -->
            <link rel="stylesheet" href="css/style.css">

            <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
        </head>

        <body>
            <div class="container">
                <div class="top">
                    <h1 id="title" class="hidden"><span id="logo">Post<span>bud</span></span></h1>
                </div>
                <div class="login-box animated fadeInUp">
                    <div class="box-header">
                        <div class="login w3l">	
                            <div class="modal-content modal-info">

                                <div class="modal-header">
                                    <h2><strong>Meu Perfil - <%=user.getNome()%></strong></h2>							
                                    <img src="images/john.png" title="user" alt="user" />
                                </div>							
                            </div>
                            <a href="carta.jsp""><button type="submit"><strong>Escrever...</strong></button></a>
                            <a href=""><button type="submit"><strong>Minhas Cartas</strong></button></a>
                            <a href="BuscaCarta"><button type="submit"><strong>Editar Carta</strong></button></a>
                            <a href="#"><button type="submit"><strong>Caixa de Correio</strong></button></a>	
                        </div>

                        <form action="Logout" method="post">
                            <button type="submit"><strong>Sair</strong></button>
                        </form>
                    </div>	
                    <i style="margin-top: 20px" class="fa fa-cog fa-spin fa-3x fa-lg"></i>							
                </div>				
            </div>
            <ul>
                <li><a href="http://www.facebook.com.br" class="facebook"><img src="images/fb.png" title="facebook" alt="facebook" /></a></li>
                <li><a href="http://www.twitter.com.br" class="twitter"><img src="images/tw.png" title="twitter" alt="twitter" /></a></li>
                <li><a href="http://www.googleplus.com.br" class="googleplus"><img src="images/gp.png" title="googleplus" alt="googleplus" /></a></li>
            </ul>	

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