<html>
<head><title>Manipulando Produto</title></head>
<meta charset="utf-8">
<body>
<h3> Manipula produto
<div style="width:600px; height: 300px; overflow: auto;">   
<table border="1" width="480px">
<tr><td>Código</td><td>Nome</td><td>Preço</td><td>Estoque</td><td>Validade</td><td>Alterar</td><td>Excluir</td></tr>
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
		$validade = date('d/m/Y',strtotime($vet['Validade']));
		echo "<tr>";
		echo "<td>$codigo</td><td>$nome</td><td>$preco</td><td>$estoque</td>
		                    <td>$validade</td>";
		echo "<td><form action='formalteraproduto.php' method='POST'>
                                      <input type='submit' value='Alterar'>";
		echo "<input type='hidden' name='codigo' value='$codigo'></form></td>";
		echo "<td><form action='excluiproduto.php' method='POST'>
                                        <input type='submit' value='Excluir'>";
		echo "<input type='hidden' name='codigo' value='$codigo'></form></td>";
		echo "</tr>";
	}
}
else
	echo "Retorno vazio";
?>
</table>
</div></body></html>
