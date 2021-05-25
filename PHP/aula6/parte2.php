<?php
session_start();
$erro_quantdde1 = "";
$erro_quantdde2 = "";
$erro_quantdde3 = "";
$erro_quantdde4 = "";
$erro_validacao = 0;

if (isset($_POST["caixa"])) {
	$_SESSION["marcodgo"]	=$_POST["marcodgo"];
	$_SESSION["codprodto1"] =$_POST["codprodto1"];
	$_SESSION["corcodgo"]	=$_POST["corcodgo"];
	$_SESSION["quantdd1"] 	=$_POST["quantdd1"];
	$_SESSION["codprodto2"] =$_POST["codprodto2"];
	$_SESSION["quantdd2"] 	=$_POST["quantdd2"];	
	$_SESSION["codprodto3"] =$_POST["codprodto2"];
	$_SESSION["quantdd3"] 	=$_POST["quantdd2"];	
	$_SESSION["codprodto4"] =$_POST["codprodto4"];
	$_SESSION["quantdd4"] 	=$_POST["quantdd4"];	

	if ($_SESSION["quantdd1"] < 1) {
		$erro_quantdde1 = "<span style='color:blue'>Preencher Quantidade</span>";
		$erro_validacao ++;
	}
	
	if ($_SESSION["quantdd2"] < 1) {
		$erro_quantdde2 = "<span style='color:blue'>Preencher Quantidade</span>";
		$erro_validacao ++;
	}

	if ($_SESSION["quantdd3"] < 1) {
		$erro_quantdde3 = "<span style='color:blue'>Preencher Quantidade</span>";
		$erro_validacao ++;
	}

	if ($_SESSION["quantdd4"] < 1) {
		$erro_quantdde4 = "<span style='color:blue'>Preencher Quantidade</span>";
		$erro_validacao ++;
	}

	if ($erro_validacao == 0) {
		Header("Location: parte3.php");
	}
}
?>

<!DOCTYPE html>
<html lang="pt-br">
<head>
	<meta charset="utf-8">
</head>
<body bgcolor="powderblue">
	<h2 style="color: blue">DADOS DOS PRODUTOS</h2>
		<form method = "POST" action="parte2.php">

			<h2><font size="4">Escolha o Notebook:</font></h2>
			Marca:<br/> 
			<select name="marcodgo"> 
				<option value="1"  <?php if((isset($_SESSION["marcodgo"])) AND ($_SESSION["marcodgo"] == "1")) 
					echo 'selected="true"' ?>>Dell</option>

				<option value="2"  <?php if((isset($_SESSION["marcodgo"])) AND ($_SESSION["marcodgo"] == "2")) 
					echo 'selected="true"' ?>> Acer</option>

				<option value="3"  <?php if((isset($_SESSION["marcodgo"])) AND ($_SESSION["marcodgo"] == "3")) 
					echo 'selected="true"' ?>> Lenovo</option>

				<option value="4"  <?php if((isset($_SESSION["marcodgo"])) AND ($_SESSION["marcodgo"] == "4")) 
					echo 'selected="true"' ?>> Samsung</option>

				<option value="5"  <?php if((isset($_SESSION["marcodgo"])) AND ($_SESSION["marcodgo"] == "5")) 
					echo 'selected="true"' ?>> Asus</option>
			</select>

			<br/>

			Modelo:<br/> 
			<select name="codprodto1"> 
			<!-----------------------------------------NOTEBOOK DA DELL--------------------------------------------------->
				<option value="1" <?php if((isset($_SESSION["codprodto1"])) AND ($_SESSION["codprodto1"] == "1")) 
					echo 'selected="true"' ?>> Notebook Dell Inspiron - R$ 2.300,00</option> 

				<option value="2" <?php if((isset($_SESSION["codprodto1"])) AND ($_SESSION["codprodto1"] == "2")) 
					echo 'selected="true"' ?>> Notebook Dell Inspiron 14 3000 - R$ 2.700,00 </option> 

				<option value="3" <?php if((isset($_SESSION["codprodto1"])) AND ($_SESSION["codprodto1"] == "3")) 
					echo 'selected="true"' ?>> Notebook Dell XPS - R$ 8.000,00 </option>

			<!----------------------------------------NOTEBOOK DA ACER---------------------------------------------------->
				<option value="4" <?php if((isset($_SESSION["codprodto1"])) AND ($_SESSION["codprodto1"] == "4")) 
					echo 'selected="true"' ?>> Notebook Acer Spin 5 - R$ 8.799,00</option> 

				<option value="5" <?php if((isset($_SESSION["codprodto1"])) AND ($_SESSION["codprodto1"] == "5")) 
					echo 'selected="true"' ?>> Notebook Acer Aspire 5 A514-53G-571X - R$ 4.500,00 </option> 

				<option value="6" <?php if((isset($_SESSION["codprodto1"])) AND ($_SESSION["codprodto1"] == "6")) 
					echo 'selected="true"' ?>> Notebook Acer Aspire 5 A514-53-59QJ - R$ 4.000,00 </option>

			<!-----------------------------------------NOTEBOOK DA LENOVO------------------------------------------------->
				<option value="7" <?php if((isset($_SESSION["codprodto1"])) AND ($_SESSION["codprodto1"] == "7")) 
					echo 'selected="true"' ?>> Notebook Lenovo Ideapad S145 - R$ 3.359,00</option> 

				<option value="8" <?php if((isset($_SESSION["codprodto1"])) AND ($_SESSION["codprodto1"] == "8")) 
					echo 'selected="true"' ?>> Notebook Lenovo IdeaPad Flex 5i - R$ 2.700,00 </option> 

				<option value="9" <?php if((isset($_SESSION["codprodto1"])) AND ($_SESSION["codprodto1"] == "9")) 
					echo 'selected="true"' ?>> Notebook Lenovo Ideapad L340 Gamer - R$ 5.299,00 </option>

			<!----------------------------------------NOTEBOOK DA SAMSUNG------------------------------------------------>
				<option value="10" <?php if((isset($_SESSION["codprodto1"])) AND ($_SESSION["codprodto1"] == "10")) 
					echo 'selected="true"' ?>> Notebook Samsung S51 - R$ 4.699,00</option> 

				<option value="11" <?php if((isset($_SESSION["codprodto1"])) AND ($_SESSION["codprodto1"] == "11")) 
					echo 'selected="true"' ?>> Notebook Samsung S51 Pro - R$ 9.999,00 </option> 

				<option value="12" <?php if((isset($_SESSION["codprodto1"])) AND ($_SESSION["codprodto1"] == "12")) 
					echo 'selected="true"' ?>> Samsung Notebook Flash F30 - R$ 5.000,00 </option>

			<!-----------------------------==-----NOTEBOOK DA ASUS------------------------------------------------------->
				<option value="13" <?php if((isset($_SESSION["codprodto1"])) AND ($_SESSION["codprodto1"] == "13")) 
					echo 'selected="true"' ?>> Notebook Asus ZenBook 14 UX431FA - R$ 5.699,00</option> 

				<option value="14" <?php if((isset($_SESSION["codprodto1"])) AND ($_SESSION["codprodto1"] == "14")) 
					echo 'selected="true"' ?>> Notebook Asus ZenBook 14 UX434FAC - R$ 4.700,00 </option> 

				<option value="15" <?php if((isset($_SESSION["codprodto1"])) AND ($_SESSION["codprodto1"] == "15")) 
					echo 'selected="true"' ?>> Notebook Asus ZenBook Pro Duo UX581GV - R$ 6.443,00 </option>
			</select>

			<br/>

			Cor:<br/> 
			<select name="corcodgo"> 
				<option value="1" <?php if((isset($_SESSION["corcodgo"])) AND ($_SESSION["corcodgo"] == "1")) 
					echo 'selected="true"' ?>> Preto</option> 

				<option value="2" <?php if((isset($_SESSION["corcodgo"])) AND ($_SESSION["corcodgo"] == "2")) 
					echo 'selected="true"' ?>> Dourado</option> 

				<option value="3" <?php if((isset($_SESSION["corcodgo"])) AND ($_SESSION["corcodgo"] == "3")) 
					echo 'selected="true"' ?>> Azul</option>

				<option value="4" <?php if((isset($_SESSION["corcodgo"])) AND ($_SESSION["corcodgo"] == "4")) 
					echo 'selected="true"' ?>> Cinza</option>
			</select>

			<br/>

			Quantidade:<br/> 
			<input type="text" name="quantdd1" size="1" maxlength="1" 
			value="<?php if (isset($_SESSION["quantdd1"])) echo $_SESSION["quantdd1"] ?>" />
			<?php echo $erro_quantdde1 ?>
			<br/>


			<h2><font size="4">Escolha o Processador:</font></h2>
			Processador:<br/> 
			<select name="codprodto2"> 
				<option value="1" <?php if((isset($_SESSION["codprodto2"])) AND ($_SESSION["codprodto2"] == "1")) 
					echo 'selected="true"' ?>> Processador I3 - R$ 632,00 </option> 

				<option value="2" <?php if((isset($_SESSION["codprodto2"])) AND ($_SESSION["codprodto2"] == "2")) 
					echo 'selected="true"' ?>> Processador I5  -  R$ 1.800,00 </option> 

				<option value="3" <?php if((isset($_SESSION["codprodto2"])) AND ($_SESSION["codprodto2"] == "3")) 
					echo 'selected="true"' ?>> Processador I7 - R$ 2.199,00 </option>

				<option value="4" <?php if((isset($_SESSION["codprodto2"])) AND ($_SESSION["codprodto2"] == "4")) 
					echo 'selected="true"' ?>> Processador I9 - R$ 3.039,00 </option>
			</select>

			<br/>

			Quantidade:<br/> 
			<input type="text" name="quantdd2" size="1" maxlength="1" 
			value="<?php if (isset($_SESSION["quantdd2"])) echo $_SESSION["quantdd2"] ?>" />
			<?php echo $erro_quantdde2 ?>
			<br/>


			<h2><font size="4">Escolha Placa de Video:</font></h2>
			Placa Video:<br/> 
			<select name="codprodto3"> 
				<option value="1" <?php if((isset($_SESSION["codprodto3"])) AND ($_SESSION["codprodto3"] == "1")) 
					echo 'selected="true"' ?>> Galax Geforce GTX 1650 - R$ 1.099,00 </option> 

				<option value="2" <?php if((isset($_SESSION["codprodto3"])) AND ($_SESSION["codprodto3"] == "2")) 
					echo 'selected="true"' ?>> Nvidia Geforce GTX 1050 -  R$ 970,00 </option> 

				<option value="3" <?php if((isset($_SESSION["codprodoto3"])) AND ($_SESSION["codprodto3"] == "3")) 
					echo 'selected="true"' ?>> Asus Geforce GTX 1650 - R$ 1.000,00 </option>

				<option value="4" <?php if((isset($_SESSION["codprodto3"])) AND ($_SESSION["codprodto3"] == "4")) 
					echo 'selected="true"' ?>> Asus Dual AMD Radeon Rx 5500 - R$ 1.338,00 </option>

				<option value="5" <?php if((isset($_SESSION["codprodto3"])) AND ($_SESSION["codprodto3"] == "5")) 
					echo 'selected="true"' ?>> Asrock Radeon Rx 570 - R$ 1.330,00 </option>
			</select>

			<br/>

			Quantidade:<br/> 
			<input type="text" name="quantdd3" size="1" maxlength="1" 
			value="<?php if (isset($_SESSION["quantdd3"])) echo $_SESSION["quantdd3"] ?>" />
			<?php echo $erro_quantdde3 ?>
			<br/>


			<h2><font size="4">Escolha a Placa Mãe:</font></h2>
			Placa Mãe:<br/> 
			<select name="codprodto4"> 
				<option value="1" <?php if((isset($_SESSION["codprodto4"])) AND ($_SESSION["codprodto4"] == "1")) 
					echo 'selected="true"' ?>> Gigabyte B550M Aorus Elite - R$ 1.239,00 </option> 

				<option value="2" <?php if((isset($_SESSION["codprodto4"])) AND ($_SESSION["codprodto4"] == "2")) 
					echo 'selected="true"' ?>> Gigabyte Z390 M Gaming LGA 1151 - R$ 1.444,00 </option> 

				<option value="3" <?php if((isset($_SESSION["codprodto4"])) AND ($_SESSION["codprodto4"] == "3")) 
					echo 'selected="true"' ?>> Gigabyte Z490M Gaming X - R$ 1.399,00 </option>

				<option value="4" <?php if((isset($_SESSION["codprodto4"])) AND ($_SESSION["codprodto4"] == "4")) 
					echo 'selected="true"' ?>> Gigabyte B550M DS3H AM4 - R$ 990,00 </option>

				<option value="5" <?php if((isset($_SESSION["codprodto4"])) AND ($_SESSION["codprodto4"] == "5")) 
					echo 'selected="true"' ?>> Gigabyte A520 AORUS ELITE - R$ 854,00 </option>
			</select>

			<br/>


			Quantidade:<br/> 
			<input type="text" name="quantdd4" size="1" maxlength="1" 
			value="<?php if (isset($_SESSION["quantdd4"])) echo $_SESSION["quantdd4"] ?>" />
			<?php echo $erro_quantdde4 ?>
			<br/><br/>


			<input type="submit" value="Proxima Tela" name="caixa">
			&nbsp;&nbsp;
			<input type="reset" value="Limpa Tela">

		</form>
		<a href="index.php"><button>Voltar Página</button></a>
	</body>
</html>


