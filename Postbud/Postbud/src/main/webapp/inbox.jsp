<%@page import="hibernatePersistent.usuario.Usuario"%>
<%@page import="Servlet.Mailbox"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="br">
    <head>
        <meta charset= "UTF-8">
        <link rel="icon" href="images/logo.png" type="image/x-icon" />
        <link href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700|Lato:400,100,300,700,900' rel='stylesheet' type='text/css'>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="css/inbox.css"> 
        <link rel="stylesheet" href="css/animate.css">
        <title>Caixa de Correio</title>
    
    </head>
   
    <body>
        <div class="container">
         <div class="top">
                    <h1 id="title" class="hidden"><span id="logo" class="animated fadeInDown">Post<strong>bud</strong></span></h1>
         </div>
        </div>
        <div class="menu">
            <h2>Caixa de Correio</h2>
            <p><strong>Lidas</strong></p>
            <p><strong>Não Lidas</strong></p>    
        </div>
    </body>

</html>
