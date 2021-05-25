<!DOCTYPE html>
<html lang="pt-br">
<head>
	<title>LG Aula11</title>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="../aula1/css/estillogin.css">
</head>

<body>

	<form class="use" method="POST" action="index.php">
	
		<h2>LOGIN</h2>

			<input type="text" name="usuario" maxlength="25" placeholder="Nome de Usuário">
			<br/><br/>
			<input type="password" name="senha" maxlength="15" placeholder="Senha" >
			<br/><br/>


			<a href="../aula11/php/menu.php"><input type="submit" value="Pesquisar" name="lobo"></input></a>

	</form>

	<?php 
	if(isset($_POST["lobo"])){
		require("conecta.php");
		$usuario=htmlentities($_POST["usuario"]);
		$senha=htmlentities($_POST["senha"]);

		$query = $mysqli->query("select * from tl_usuario where usuario = '$usuario' and senha = '$senha'");

		if ($query->num_rows > 0){
			Header("location:menu.php");
		}
	}	
	?>

</body>
</html>