<?php
	include 'connection.php';
	$nome = $_POST['Nome'];
	$login = $_POST['Login'];
	$senha = $_POST['Senha'];
	$telefone = $_POST['Telefone'];
	//Formata a data para aaaa/mm/dd
	//$data = explode("/", $validade);
	//$novadata = $data[2]."/".$data[1]."/".$data[0];
	$sqlinsert = "Insert Into Usuario(Nome, Login, Senha, Telefone) Values('$nome','$login','$senha','$telefone')";	
	mysqli_query($conexao,$sqlinsert) or die("Erro ao cadastrar usuario.");
	$ultimocodigo = mysqli_insert_id($conexao);
	echo "<p>Código gerado = $ultimocodigo";
	echo "<p>Usuario cadastrado com sucesso!";
	echo "<a href='ForminserirUsuario.php'>Voltar</a>";
?>
