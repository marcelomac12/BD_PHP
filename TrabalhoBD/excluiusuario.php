<?php
	include 'connection.php';
	$codigo = $_POST['codigo'];
	$sqldelete = "Delete from Usuario Where Codigo = $codigo";
	mysqli_query($conexao,$sqldelete) or die("Erro ao excluir o usuario");
	echo "Usuario excluído com sucesso.<br>";
	echo "<a href='formmanipulausuario.php'>Voltar</a>";
?>
