<html>
<head><title>Manipulando Usuario</title></head>
<meta charset="utf-8">
<body>
<h3> Manipula Usuario
<div style="width:800px; height: 600px; overflow: auto;">   
<table border="1" width="480px">
<tr><td>Código</td><td>Nome</td><td>Login</td><td>Senha</td><td>Telefone</td><td>Alterar</td><td>Excluir</td></tr>
<?php
	include 'connection.php';
	mysqli_set_charset($conexao, "utf8");
	$sqlselect = "Select * From Usuario";
	$result = mysqli_query($conexao,$sqlselect) or die("Requisição com erros");
if (mysqli_num_rows($result) > 0) {
	while($vet = mysqli_fetch_array($result)){
		$codigo = $vet['Codigo'];
		$nome = $vet['Nome'];
		$login = $vet['Preco'];
		$senha = $vet['Estoque'];
		$telefone = $vet['Telefone'];
		//$data = date('d/m/Y',strtotime($vet['Validade']));
		echo "<tr>";
		echo "<td>$codigo</td><td>$nome</td><td>$login</td><td>$senha</td><td>$telefone</td>";
		echo "<td><form action='formalterausuario.php' method='POST'><input type='submit' value='Alterar'>";
		echo "<input type='hidden' name='codigo' value='$codigo'></form></td>";
		echo "<td><form action='excluiusuario.php' method='POST'><input type='submit' value='Excluir'>";
		echo "<input type='hidden' name='codigo' value='$codigo'></form></td>";
		echo "</tr>";
	}
}
else
	echo "Retorno vazio";
?>
</table>
</div></body></html>
