<?php
	include 'connection.php';
	$data01 = $_POST['Data'];
	$vendedor = $_POST['Vendedor'];
	//Formata a data para aaaa/mm/dd
	$data02 = explode("/", $data01);
	$novadata = $data02[2]."/".$data02[1]."/".$data02[0];
	
	$sqlinsert = "Insert Into Venda(Vendedor, Data) Values('$vendedor','$novadata')";	
	mysqli_query($conexao,$sqlinsert) or die("Erro ao cadastrar venda.");
	$ultimocodigo = mysqli_insert_id($conexao);
	echo "<p>Código gerado = $ultimocodigo";

	echo "<p>Venda cadastrada com sucesso.";
	echo "<p><a href='vendas.html'>Selecionar itens</a>";
?>
