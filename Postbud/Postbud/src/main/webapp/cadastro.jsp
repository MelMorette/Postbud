<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="br">

<head>
	<meta charset="utf-8">
	<title>Cadastro Postbud</title>

	<!-- Google Fonts -->
	<link href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700|Lato:400,100,300,700,900' rel='stylesheet' type='text/css'>

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
				<h2>Cadastro</h2>
			</div>
                     <form action="CadastroUsuario" method="post">
                    
			<label for="username">Nome</label>
			<br/>
                        <input type="text" id="username" name="nome">
			<br/>
			<label for="username">Sobrenome</label>
			<br/>
                        <input type="text" id="username" name="sobrenome">
			<br/>
			<label for="username">Email</label>
			<br/>
                        <input type="text" id="email" name="email">
			<br/>	
			<label for="password">Senha</label>
			<br/>
                        <input type="password" id="password" name="senha">
			<br/>					
			<button type="submit" value="Cadastre-se"> Cadastrar</button></a>
			<br/>
		</div>
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

</html>