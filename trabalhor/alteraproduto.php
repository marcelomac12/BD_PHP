<?php
	include 'connection.php';
	$codigo = $_POST['Codigo'];
	$nome = $_POST['Nome'];
	$preco = $_POST['Preco'];
	$estoque = $_POST['Estoque'];
	$validade = $_POST['Validade'];
	
	//Formata a data para aaaa/mm/dd
	$data = explode("/", $validade);
	$novadata = $data[2]."-".$data[1]."-".$data[0];
	
	$sqlupdate = "Update Produto set Nome='$nome', Preco=$preco, Estoque=$estoque, Validade='$novadata' Where Codigo = $codigo";
	mysqli_query($conexao,$sqlupdate) or die("Erro ao alterar o produto");
	echo "Produto alterado com sucesso.<br>";
	echo "<a href='controle01.html'>Voltar</a>";
?>
