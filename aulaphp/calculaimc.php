<?php
	$peso = $_POST['peso']; // metodo GET aparece os dados na url
	$altura = $_POST['altura'];
	$imc = $peso/pow($altura,2);
	echo "<p> IMC = $imc";
	echo "<p> <a href =  'formularioimc.php'>Voltar</a>";
?>
