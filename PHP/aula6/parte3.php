<?php
session_start();
$erro_validacao = 0;

if (isset($_POST["caixa"])) {
	$_SESSION["pagcodgo"] =$_POST["pagcodgo"];
	$_SESSION["numcodgo"] =$_POST["numcodgo"];

	if ($erro_validacao == 0) {
		Header("Location: confirma.php");
	}
}
?>

<!DOCTYPE html>
<html lang="pt-br">
<head>
	<meta charset="utf-8">
</head>
<body bgcolor="powderblue">
	<h2 style="color: blue">FORMAS DE PAGAMENTOS</h2>
		<form method="POST" action="parte3.php"> 

			<h2><font size="4">Escolha a Formas:</font></h2>

			Pagamentos
			<select name="pagcodgo"> 
				<option value="1" <?php if((isset($_SESSION["pagcodgo"])) AND ($_SESSION["pagcodgo"] == "1")) 
					echo 'selected="true"' ?>> Cartão de Crédito Virtual</option>

				<option value="2" <?php if((isset($_SESSION["pagcodgo"])) AND ($_SESSION["pagcodgo"] == "2")) 
					echo 'selected="true"' ?>> Boleto</option>

				<option value="3" <?php if((isset($_SESSION["pagcodgo"])) AND ($_SESSION["pagcodgo"] == "3")) 
					echo 'selected="true"' ?>> Crédito</option>

				<option value="4" <?php if((isset($_SESSION["pagcodgo"])) AND ($_SESSION["pagcodgo"] == "4")) 
					echo 'selected="true"' ?>> Dinheiro</option>

				<option value="5" <?php if((isset($_SESSION["pagcodgo"])) AND ($_SESSION["pagcodgo"] == "5")) 
					echo 'selected="true"' ?>> PicPay</option>
			</select>

			&nbsp;

			Parcelas:
			<select name="numcodgo">
			<!---------------------------------------3X - SEM JUROS------------------------------------------>
				<option value="1" <?php if((isset($_SESSION["numcodgo"])) AND ($_SESSION["numcodgo"] == "1")) 
					echo 'selected="true"' ?>> 2x - S/ Juros</option>

				<option value="2" <?php if((isset($_SESSION["numcodgo"])) AND ($_SESSION["numcodgo"] == "2")) 
					echo 'selected="true"' ?>> 3x - S/ Juros</option>

				<option value="3" <?php if((isset($_SESSION["numcodgo"])) AND ($_SESSION["numcodgo"] == "3")) 
					echo 'selected="true"' ?>> 4x - S/ Juros</option>

			<!----------------------------------------9X - COM JUROS----------------------------------------->
				<option value="4" <?php if((isset($_SESSION["numcodgo"])) AND ($_SESSION["numcodgo"] == "4")) 
					echo 'selected="true"' ?>> 5x - C/ Juros - 5%</option>

				<option value="5" <?php if((isset($_SESSION["numcodgo"])) AND ($_SESSION["numcodgo"] == "5")) 
					echo 'selected="true"' ?>> 6x - C/ Juros - 7%</option>

				<option value="6" <?php if((isset($_SESSION["numcodgo"])) AND ($_SESSION["numcodgo"] == "6")) 
					echo 'selected="true"' ?>> 7x - C/ Juros - 9%</option>

				<option value="7" <?php if((isset($_SESSION["numcodgo"])) AND ($_SESSION["numcodgo"] == "7")) 
					echo 'selected="true"' ?>> 8x - C/ Juros - 10%</option>

				<option value="8" <?php if((isset($_SESSION["numcodgo"])) AND ($_SESSION["numcodgo"] == "8")) 
					echo 'selected="true"' ?>> 9x - C/ Juros - 12%</option>

			</select>
			
			<br/><br/>
			
			<input type="submit" value="Proxima Tela" name="caixa">
			&nbsp;&nbsp;
			<input type="reset" value="Limpa Tela">
			
		</form>
		<a href="index.php"><button>Voltar Página</button></a>
	</body>
</html>