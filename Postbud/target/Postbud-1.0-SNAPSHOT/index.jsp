<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="br">

<head>
	<meta charset="utf-8">
	<title>Index Postbud</title>

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
                        <form action="Login" method="post">
				<h2>Login</h2>
			</div>
			<label for="username">Email</label>
			<br/>
			<input type="text" id="email" name="un" >
			<br/>
			<label for="password">Senha</label>
			<br/>
			<input type="password" id="password" name="pw">
			<br/>
			<button type="submit" value="Entrar" id="botao"> Logar</button></a>
			<br/>
			<p class="small">Esqueceu sua senha?</p></a>
			<p class="small">Ainda não é cadastrado? <a href="cadastro.jsp"><strong>Clique Aqui!</strong></p></a>
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