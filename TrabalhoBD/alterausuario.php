<?php
	include 'connection.php';
	$codigo = $_POST['Codigo'];
	$nome = $_POST['Nome'];
	$login = $_POST['Login'];
	$senha = $_POST['Senha'];
	$telefone = $_POST['Telefone'];
	
	//Formata a data para aaaa/mm/dd
	//$data = explode("/", $validade);
	//$novadata = $data[2]."-".$data[1]."-".$data[0];
	
	$sqlupdate = "Update Usuario set Nome='$nome', Login='$login', Senha='$senha', Telefone='$telefone' Where Codigo = $codigo";
	mysqli_query($conexao,$sqlupdate) or die("Erro ao alterar o usuario");
	echo "Usuario alterado com sucesso.<br>";
	echo "<a href='formmanipulausuario.php'>Voltar</a>";
?>
