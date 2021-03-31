<?php
	include 'connection.php';
	$codigo = $_POST['codigo'];
	$sqldelete = "Delete from Produto Where Codigo = $codigo";
	mysqli_query($conexao,$sqldelete) or die("Erro ao excluir o produto");
	echo "Produto excluído com sucesso.<br>";
	echo "<a href='formmanipulaproduto.php'>Voltar</a>";
?>
