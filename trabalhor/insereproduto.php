<?php
	include 'connection.php';
	$nome = $_POST['Nome'];
	$preco = $_POST['Preco'];
	$estoque = $_POST['Estoque'];
	$validade = $_POST['Validade'];
	//Formata a data para aaaa/mm/dd
	$data = explode("/", $validade);
	$novadata = $data[2]."/".$data[1]."/".$data[0];
	$sqlinsert = "Insert Into Produto(Nome, Preco, Estoque, Validade) Values('$nome',$preco,$estoque,'$novadata')";	
	mysqli_query($conexao,$sqlinsert) or die("Erro ao cadastrar produto.");
	$ultimocodigo = mysqli_insert_id($conexao);
	echo "<p>Código gerado = $ultimocodigo";
	echo "<p>Produto cadastrado com sucesso.";
	echo "<a href='controle01.html'>Voltar</a>";
?>
