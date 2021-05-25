<?php
session_start();
$erro_nome = "";
$erro_cpf = "";
$erro_email = "";
$erro_fone = "";
$erro_idade = "";
$erro_validacao = 0;

if (isset($_POST["caixa"])) {
	$_SESSION["nome"]  	= $_POST["nome"];
	$_SESSION["cpf"]  	= $_POST["cpf"];
	$_SESSION["email"] 	= $_POST["email"];
	$_SESSION["fone"]  	= $_POST["fone"];
	$_SESSION["idade"]  = $_POST["idade"];


	// VALIDACAO: DE TODOS OS CAMPOS
	if ($_SESSION["nome"] == "") {
		$erro_nome = "<span style='color:blue'>Preencha o campo</span>";
		$erro_validacao ++;
	} 

	if ($_SESSION["cpf"] == "") {
		$erro_cpf = "<span style='color:blue'>Preencha o campo</span>";
		$erro_validacao ++;
	} 

	if ($_SESSION["email"] == "") {
		$erro_email = "<span style='color:blue'>Preencha o campo</span>";
		$erro_validacao ++;
	} 

	if ($_SESSION["fone"] == "") {
		$erro_fone = "<span style='color:blue'>Preencha o campo</span>";
		$erro_validacao ++;
	} 

	if ($_SESSION["idade"] == "") {
		$erro_idade = "<span style='color:blue'>Preencha o campo</span>";
		$erro_validacao ++;
	} 

	// SEM ERRO DE VALIDAÇÃO
	// VAI PARA PROXIMA ETAPA
	if ($erro_validacao == 0) {
		Header("Location: parte2.php");
	}
}
?>


<!DOCTYPE html>
<html lang="pt-br">
<head>
	<meta charset="utf-8">
	<title>DAL Vendas.com</title>
</head>
<body bgcolor="powderblue">
	<h2 style="color: blue">DADOS DOS CLIENTES</h2>
		<form method="POST" action="index.php"> 

			Nome:  &nbsp;<input type="text" name="nome" size="25" maxlength="50" 
			value="<?php if (isset($_SESSION["nome"])) echo $_SESSION["nome"] ?>">
			<?php echo $erro_nome ?> 
			<br/>

			Cpf:  	&nbsp;<input type="text" name="cpf" size="25" maxlength="20" 
			value="<?php if (isset($_SESSION["cpf"])) echo $_SESSION["cpf"] ?>">
			<?php echo $erro_cpf ?>
			<br/>		

			E-mail:  &nbsp;<input type="text" name="email" size="25" maxlength="50" 
			value="<?php if (isset($_SESSION["email"])) echo $_SESSION["email"] ?>"> 
			<?php echo $erro_email ?>
			<br/>

			Telefone: &nbsp;<input type="text" name="fone" size="25" maxlength="50" 
			value="<?php if (isset($_SESSION["fone"])) echo $_SESSION["fone"] ?>"> 
			<?php echo $erro_fone ?>
			<br/>

			Idade: 	&nbsp;<input type="text" name="idade" size="25" maxlength="50" 
			value="<?php if (isset($_SESSION["idade"])) echo $_SESSION["idade"] ?>"> 
			<?php echo $erro_idade ?>
			<br/>

			Rg: 	&nbsp;<input type="text" name="rg" size="25" maxlength="50">

			<br/><br/>

			<input type="submit" value="Proxima Tela" name="caixa">
			&nbsp;&nbsp;
			<input type="reset" value="Limpa Tela">

			</form>
	</body>
</html>