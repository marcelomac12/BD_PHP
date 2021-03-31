<?php
	$peso = $_GET['peso'];
	$altura = $_GET['altura'];
	$imc = $peso/pow($altura,2);
	echo "<p> IMC = $imc";
	echo "<p> <a href =  'formimc.php'>Voltar</a>";
?>
