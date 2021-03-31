<?php
	include 'connection.php';
	mysqli_set_charset($conexao, "utf8");
	$sqlselect = "Select * From Usuario";
	$result = mysqli_query($conexao,$sqlselect) or die("Requisição com erros");
	if (mysqli_num_rows($result) > 0) {
		while($vet = mysqli_fetch_array($result)){
			$codigo = $vet['Codigo'];
			$nome = $vet['Nome'];
			$login = $vet['Login'];
			$senha = $vet['Senha'];
			$telefone = $vet['Telefone'];		
			echo "<p>Codigo: $codigo <br>Nome: $nome<br>
                             Preco:$preco<br>Estoque:$estoque<br>Telefone:$telefone";
		}
	}
	else
		echo "Retorno vazio";
?>
