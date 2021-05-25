<?php  
session_start();
?>

<!DOCTYPE html>
<html lang="pt-br">
<head>
	<meta charset="utf-8">
</head>
	<body>
		<form>
			<h2 style="color: blue">RECEBENDO OS DADOS</h2>

			<?php

				//---------recebendo dados do index---------------------//
				$nome	=$_SESSION["nome"];
				$cpf	=$_SESSION["cpf"];
				$email	=$_SESSION["email"];
				$fone	=$_SESSION["fone"];
				$idade	=$_SESSION["idade"];


				//---------recebendo dados da parte 2-------------------//
				$marcodgo	=$_SESSION["marcodgo"];
				$codprodto1	=$_SESSION["codprodto1"];
				$corcodgo	=$_SESSION["corcodgo"];
				$codprodto2	=$_SESSION["codprodto2"];
				$codprodto3	=$_SESSION["codprodto3"];
				$codprodto4	=$_SESSION["codprodto4"];


				//-------recebendo dados da parte 3---------------------//
				$pagcodgo	=$_SESSION["pagcodgo"];
				$numcodgo	=$_SESSION["numcodgo"];

				if ($pagcodgo==1) {
					$op1 = "Cartão de Crédito Virtual";	
				} elseif ($pagcodgo==2) {
					$op1 = "Boleto ";
				} elseif ($pagcodgo==3) {
					$op1 = "Crédito";
				} elseif ($pagcodgo==4) {
					$op1 = "Dinheiro";
				} else {
					$op1 = "PicPay";
				}

				//-------recebendo dados da parte 3:PARCELAS-----------//
				if ($numcodgo==1) {
					$op2 = "2x - Sem Juros";	
				} elseif ($numcodgo==2) {
					$op2 = "3x - Sem Juros";
				} elseif ($numcodgo==3) {
					$op2 = "4x - Sem Juros";

				} elseif ($numcodgo==4) {
					$op2 = "5x - Com Juros - 5%";
				} elseif ($numcodgo==4) {
					$op2 = "6x - Com Juros - 7%";
				} elseif ($numcodgo==4) {
					$op2 = "7x - Com Juros - 9%";
				} elseif ($numcodgo==4) {
					$op2 = "8x - Com Juros - 10%";
				} else {
					$op2 = "9x - Com Juros - 12%";
				}


				//-------recebendo dados da parte 2:MARCA--------------//
				if ($marcodgo==1) {
					$desc = "Dell";	
				} elseif ($marcodgo==2) {
					$desc = "Acer ";
				} elseif ($marcodgo==3) {
					$desc = "Lenovo";
				} elseif ($marcodgo==4) {
					$desc = "Samsung";
				} else {
					$desc = "Asus";
				}

				//-------recebendo dados da parte 2:MODELO--------------//
				$codprodto1=$_SESSION["codprodto1"];
				if ($codprodto1==1) {
					$desc1 = "Notebook Dell Inspiron";
					$valor1 = 2300;
				} elseif ($codprodto1==2) {
					$desc1 = "Notebook Dell Inspiron 14 3000";
					$valor1 =  2700;
				} elseif ($codprodto1==3) {
					$desc1 = "Notebook Dell Inspiron 14 3000";
					$valor1 =  2700;

				} elseif ($codprodto1==4) {
					$desc1 = "Notebook Acer Spin 5";
					$valor1 = 8799;	
				} elseif ($codprodto1==5) {
					$desc1 = "Notebook Acer Aspire 5 A514-53G-571X";
					$valor1 = 4500;	
				} elseif ($codprodto1==6) {
					$desc1 = "Notebook Acer Aspire 5 A514-53-59QJ";
					$valor1 = 4000;	 

				} elseif ($codprodto1==7) {
					$desc1 = "Notebook Lenovo Ideapad S145";
					$valor1 = 3359;	
				} elseif ($codprodto1==8) {
					$desc1 = "Notebook Lenovo IdeaPad Flex 5i";
					$valor1 = 2700;
				} elseif ($codprodto1==9) {
					$desc1 = "Notebook Lenovo Ideapad L340 Gamer";
					$valor1 = 5299;		

				} elseif ($codprodto1==10) {
					$desc1 = "Notebook Samsung S51";
					$valor1 = 4699;	
				} elseif ($codprodto1==11) {
					$desc1 = "Notebook Samsung S51 Pro ";
					$valor1 = 9999;
				} elseif ($codprodto1==12) {
					$desc1 = "Samsung Notebook Flash F30";
					$valor1 = 5000;

				} elseif ($codprodto1==13) {
					$desc1 = "Notebook Asus ZenBook 14 UX431FA";
					$valor1 = 5699;	
				} elseif ($codprodto1==14) {
					$desc1 = "Notebook Asus ZenBook 14 UX434FAC";
					$valor1 = 4700;
				} else {
					$desc1 = "Notebook Asus ZenBook Pro Duo UX581GV";
					$valor1 = 6443;	
				}


				//-------recebendo dados da parte 2:COR------------------//
				$corcodgo=$_SESSION["corcodgo"];
				if ($corcodgo==1) {
					$descr = "Preto";
				} elseif ($corcodgo==2) {
					$descr = "Dourado";
				} elseif ($corcodgo==3) {
					$descr = "Azul";
				} else {
					$descr = "Cinza";
				}
				$quantdd1=$_SESSION["quantdd1"];


				//-------recebendo dados da parte 2:PROCESSADOR----------//
				$codprodto2=$_SESSION["codprodto2"];
				if ($codprodto2==1) {
					$desc2 = "Processador I3";
					$valor2 = 632;
				} elseif ($codprodto2==2) {
					$desc2 = "Processador I5";
					$valor2 = 1800;
				} elseif ($codprodto2==3) {
					$desc2 = "Processador I7";
					$valor2 = 2199;
				} else {
					$desc2 = "Processador I9";
					$valor2 = 3039;	
				}
				$quantdd2=$_SESSION["quantdd2"];



				//-------recebendo dados da parte 2:PLACA DE VIDEO-------//
				$codprodto3=$_SESSION["codprodto3"];
				if ($codprodto3==1) {
					$desc3 = "Galax Geforce GTX 1650";
					$valor3 = 1099;
				} elseif ($codprodto3==2) {
					$desc3 = "Nvidia Geforce GTX 1050";
					$valor3 = 970;
				} elseif ($codprodto3==3) {
					$desc3 = "Asus Geforce GTX 1650";
					$valor3 = 1000;
				} elseif ($codprodto3==4) {
					$desc3 = "Asus Dual AMD Radeon Rx 5500";
					$valor3 = 1338;
				}else {
					$desc3 = "Asrock Radeon Rx 570";
					$valor3 =  1330;	
				}
				$quantdd3=$_SESSION["quantdd3"];



				//-------recebendo dados da parte 2:PLACA DE MÃE-------//
				$codprodto4=$_SESSION["codprodto4"];
				if ($codprodto4==1) {
					$desc4 = "Gigabyte B550M Aorus Elite";
					$valor4 = 1239;
				} elseif ($codprodto4==2) {
					$desc4 = "Gigabyte Z390 M Gaming LGA 1151";
					$valor4 = 1444;
				} elseif ($codprodto4==3) {
					$desc4 = "Gigabyte Z490M Gaming X";
					$valor4 = 1399;
				} elseif ($codprodto4==4) {
					$desc4 = "Gigabyte B550M DS3H AM4";
					$valor4 = 990;
				}else {
					$desc4 = "Gigabyte A520 AORUS ELITE";
					$valor4 = 854;	
				}
				$quantdd4=$_SESSION["quantdd4"];

				//----------calculando as formas de pagamentos---------//
				$sub1 = ($valor1*$quantdd1);
				$sub2 = ($valor2*$quantdd2);
				$sub3 = ($valor3*$quantdd3);
				$sub4 = ($valor4*$quantdd4);

				$total = $sub1 + $sub2 + $sub3 + $sub4;

				$pagar1 = ($total + ($total * 0.05))/5;
				$pagar2 = ($total + ($total * 0.07))/6;
				$pagar3 = ($total + ($total * 0.09))/7;
				$pagar4 = ($total + ($total * 0.10))/8;
				$pagar5 = ($total + ($total * 0.12))/9;


				//----------exibindo:OS DADOS DOS FORMULARIOS---------//
				echo "<h3>DADOS DO CLIENTE</h3>";
				echo "Nome: $nome<br/>";
				echo "Cpf: $cpf<br/>";
				echo "E-mail: $email<br/>";		
				echo "Telefone: $fone<br/>";
				echo "Idade: $idade<br/>";
	

				echo "<h3>DADOS DO PRODUTO</h3>";
				echo "Marca: $desc<br/>";
				echo "Codigo: $marcodgo<br/>";
				echo "Quantidade: $quantdd1<br/><br/>";


				echo "Modelo: $desc1<br/>";
				echo "Codigo: $codprodto1<br/>";
				echo "Quantidade: $quantdd1<br/>";
				echo "Valor Unitario: $sub1</br>";
				echo "Preço: $valor1<br/><br/>";

			
				echo "Cor: $descr<br/>";
				echo "Codigo: $corcodgo<br/>";
				echo "Quantidade: $quantdd1<br/><br/>";	


				echo "Processador: $desc2<br/>";
				echo "Codigo: $codprodto2<br/>";
				echo "Quantidade: $quantdd2<br/>";
				echo "Valor Unitario: $sub2</br>";
				echo "Preço: $valor2<br/><br/>";


				echo "Placa de Video: $desc3<br/>";
				echo "Codigo: $codprodto3<br/>";
				echo "Quantidade: $quantdd3<br/>";
				echo "Valor Unitario: $sub3</br>";
				echo "Preço: $valor3<br/><br/>";


				echo "Placa Mãe: $desc4<br/>";
				echo "Codigo: $codprodto4<br/>";
				echo "Quantidade: $quantdd4<br/>";
				echo "Valor Unitario: $sub4</br>";
				echo "Preço: $valor4<br/><br/>";


				echo "<h3>FORMAS DE PAGAMENTOS</h3>";
				echo "Forma de Pagamento: $op1</br></br>";


				echo "Total da Compra: $total</br>";
				echo "Total das Parcelas: $op2</br>";
				
	
				//----------calculando as formas de pagamentos---------//
				$sub1 = ($valor1*$quantdd1);
				$sub2 = ($valor2*$quantdd2);
				$sub3 = ($valor3*$quantdd3);
				$sub4 = ($valor4*$quantdd4);

				$total = $sub1 + $sub2 + $sub3 + $sub4;

				$pagar1 = ($total + ($total * 0.05))/5;
				$pagar2 = ($total + ($total * 0.07))/6;
				$pagar3 = ($total + ($total * 0.09))/7;
				$pagar4 = ($total + ($total * 0.10))/8;
				$pagar5 = ($total + ($total * 0.12))/9;



	
?>
	

		</br></br>
		</form>
		<a href="index.php"><button>Nova Venda</button></a>
	</body>
</html>

