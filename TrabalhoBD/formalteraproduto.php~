<?php
	include 'connection.php';
	$codigo = $_POST['codigo'];
	$sqlselect = "Select * from Produto Where Codigo=$codigo";
	$result = mysqli_query($conexao,$sqlselect) or die("Requisição com erros");
	if (mysqli_num_rows($result) > 0) {
		while($vet = mysqli_fetch_array($result)){
			$codigo = $vet['Codigo'];
			$nome = $vet['Nome'];
			$preco = $vet['Preco'];
			$estoque = $vet['Estoque'];
			$validade = date('d/m/Y',strtotime($vet['Validade']));
			echo "<form action='alteraproduto.php' method='POST'>";
			echo " <input type='hidden' value='$codigo' name='Codigo'>";
			echo "	<p>Nome <br> <input type='text' name='Nome' value='$nome'>";
			echo "	<p>Preço <br> <input type='text' name='Preco' value='$preco'>";
			echo "	<p>Estoque <br> <input type='text' name='Estoque' value='$estoque'>";
			echo "	<p>Validade <br> <input type='text' name='Validade' value='$validade'>";
			echo "	<br><br> <input type='submit'>";
			echo "</form>";
		}
	}
	else
		echo "Retorno vazio";
?>
