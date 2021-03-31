<?php
	include 'connection.php';
	$nome = $_POST['Nome'];
	$direcao = $_POST['Direcao'];
	$elenco = $_POST['Elenco'];
	$genero = $_POST['Genero'];
	$nacionalidade = $_POST['Nacionalidade'];
	$ano = $_POST['Ano'];
	$sinopse = $_POST['Sinopse'];
	$horas = $_POST['Horas'];
	
	$sqlinsert = "Insert Into Filme(Nome, Direcao, Elenco, Genero, Nacionalidade, Ano, Sinopse, Horas) Values('$nome','$direcao','$elenco,'$genero', '$nacionalidade', $ano, '$sinopse', '$horas')";	
	mysqli_query($conexao,$sqlinsert) or die("Erro ao cadastrar filme.");
	$ultimocodigo = mysqli_insert_id($conexao);
	echo "<p>Código gerado = $ultimocodigo";
	echo "<p>Filme cadastrado com sucesso.";
	echo "<a href='Forminserir.php'>Voltar</a>";
?>
