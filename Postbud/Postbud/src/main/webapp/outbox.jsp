<%@page import="java.util.List"%>
<%@page import="Carta.Carta"%>
<%@page import="hibernatePersistent.usuario.Usuario"%>
<%@page import="Carta.CartaDAO"%>
<%
    CartaDAO cDAO = new CartaDAO();
    Usuario user = (Usuario) session.getAttribute("User");

    List<Carta> cartas = (List<Carta>) cDAO.listaCartas(user.getEmail());
%>

<!DOCTYPE html>
<html lang="br">

    <head>
        <meta charset="utf-8">
        <title>Carta Postbud</title>

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
                <h1 id="title" class="hidden"><span id="logo">Post<span>bud</span></span></h1>

                <div class="carta center">
                    <%
                        for (Carta carta : cartas) {
                    %> 
                    <div class="login-box">
                        <div class="box-header">
                            <div class="login w3l">
                                <p style="color:white"><%=carta.getTitulo()%></p><br>
                            </div>
                        </div>  
                        <div class="buttons">
                            <ul>
                                <li>
                                    <a href="editarCarta.jsp">Editar</a>
                                </li>
                                <li>
                                    <a href="VisualizarCarta?id=<%=carta.getCodigo()%>">Visualizar</a>
                                </li>
                                <li>
                                    <a href="ExcluirCarta?id=<%=carta.getCodigo()%>">Excluir</a>
                                </li>
                            </ul>                   
                        </div>
                                <ul>
                                     <li>
                                        <a href="perfil.jsp">Voltar</a>
                                     </li>
                                </ul>
                    </div>
                                
                    <%
                        }
                    %>
                    
                </div>  
            </div>
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

    <style>
        
        .center {
            text-align: center;        
            margin-top: -5%;
        }
    </style>

</html>