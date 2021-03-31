<html>
	<head><title>Selecionar produtos</title></head>
	<meta charset="utf-8">
	<body>
		<h3> SELECIONAR PRODUTOS:
		<div style="width:600px; height: 300px; overflow: auto;">   
			<table border="1" width="480px">
			<tr><td>Código</td><td>Nome</td><td>Preço</td><td>Validade</td><td>Selecionar</td></tr>

			<?php
				include 'connection.php';
				mysqli_set_charset($conexao, "utf8");
				$sqlselect = "Select * From Produto";
				$result = mysqli_query($conexao,$sqlselect) or die("Requisição com erros");
				if (mysqli_num_rows($result) > 0) {
					while($vet = mysqli_fetch_array($result)){
						$codigoprod = $vet['Codigo'];
						$nome = $vet['Nome'];
						$preco = $vet['Preco'];
						$estoque = $vet['Estoque'];
					
						$validade = date('d/m/Y',strtotime($vet['Validade']));
						echo "<tr>";
						echo "<td>$codigo</td><td>$nome</td><td>$preco</td><td>$validade</td>";
						echo "<td><form action='quantidade.php' method='POST'><input type='submit' name='seleciona' value='Carrinho'>";
						echo "<input type='hidden' name='codigo' value='$codigoprod'>";
						echo "<input type='hidden' name='nome' value='$nome'>";
						echo "<input type='hidden' name='preco' value='$preco'>";
						echo "<input type='hidden' name='estoque' value='$estoque'></form></td>";
						echo "</tr>";
					}
				}
				else
				echo "Retorno vazio";
			?>
			</table>
		</div>
	</body>
</html>
