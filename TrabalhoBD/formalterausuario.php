<?php
	include 'connection.php';
	$codigo = $_POST['codigo'];
	$sqlselect = "Select * from Usuario Where Codigo=$codigo";
	$result = mysqli_query($conexao,$sqlselect) or die("Requisição com erros");
	if (mysqli_num_rows($result) > 0) {
		while($vet = mysqli_fetch_array($result)){
			$codigo = $vet['Codigo'];
			$nome = $vet['Nome'];
			$login = $vet['Login'];
			$senha = $vet['Senha'];
			$telefone = $vet['Telefone'];
			//$validade = date('d/m/Y',strtotime($vet['Validade']));
			echo "<form action='alterausuario.php' method='POST'>";
			echo " <input type='hidden' value='$codigo' name='Codigo'>";
			echo "	<p>Nome <br> <input type='text' name='Nome' value='$nome'>";
			echo "	<p>Login <br> <input type='text' name='Login' value='$login'>";
			echo "	<p>Senha <br> <input type='text' name='Senha' value='$senha'>";
			echo "	<p>Telefone <br> <input type='text' name='Telefone' value='$telefone'>";
			echo "	<br><br> <input type='submit'>";
			echo "</form>";
		}
	}
	else
		echo "Retorno vazio";
?>
