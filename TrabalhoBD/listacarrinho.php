<?php
	include 'connection.php';
	mysqli_set_charset($conexao, "utf8");
	$sqlselect = "Select * From Produto";
	$result = mysqli_query($conexao,$sqlselect) or die("Requisição com erros");
	if (mysqli_num_rows($result) > 0) {
		while($vet = mysqli_fetch_array($result)){
			$codigo = $vet['Codigo'];
			$nome = $vet['Nome'];
			$preco = $vet['Preco'];
			$estoque = $vet['Estoque'];
			$validade = $vet['Validade'];		
			echo "<p>Codigo: $codigo <br>Nome: $nome<br>
                             Preco:$preco<br>Estoque:$estoque<br>Validade:$validade";
		}
	}
	else
		echo "Retorno vazio";
?>
