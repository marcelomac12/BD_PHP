<html>
	<head><title>Manipulando Filme</title></head>
	<meta charset="utf-8">
	<body>
		<h3> Manipula filme
		<div style="width:600px; height: 700px; overflow: auto;">   
		<table border="1" width="480px">
		<tr><td>Cód</td><td>Nome</td><td>Direção</td><td>Elenco</td><td>Genero</td><td>Nacionalidade</td><td>Ano</td><td>Sinopse</td><td>Tempo</td><td>Alterar</td><td>Apagar</td></tr>
		<?php
			include 'connection.php';
			mysqli_set_charset($conexao, "utf8");
			$sqlselect = "Select * From Filme";
			$result = mysqli_query($conexao,$sqlselect) or die("Requisição com erros");
			if (mysqli_num_rows($result) > 0) {
				while($vet = mysqli_fetch_array($result)){
					$codigo = $vet['Codigo'];
					$nome = $vet['Nome'];
					$direcao = $vet['Direcao'];
					$elenco = $vet['Elenco'];
					$genero = $vet['Genero'];
					$nacionalidade = $vet['nacionalidade'];
					$ano = $vet['ano'];
					$sinopse = $vet['sinopse'];
					$tempo = $vet['tempo'];
					
					echo "<tr>";
					echo "<td>$codigo</td><td>$nome</td><td>$direcao</td><td>$elenco</td><td>$genero</td><td>$nacionalidade</td><td>$ano</td><td>$sinopse</td><td>$tempo</td>";
					echo "<td><form action='formalterafilme.php' method='POST'><input type='submit' value='Alterar'>";
					echo "<input type='hidden' name='codigo' value='$codigo'></form></td>";
					echo "<td><form action='excluifilme.php' method='POST'><input type='submit' value='Excluir'>";
					echo "<input type='hidden' name='codigo' value='$codigo'></form></td>";
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
