<html>
	<head><title>Quantidade</title></head>
	<meta charset="utf-8">
	<body>
		<h3> QUANTIDADES:
		<form action="comprar.php" method="POST">
			<p>Digite a quantidade:<br><input type="text" name="quantidade"><br>
			
				<?php
					$codigoprod = $_POST['codigo'];
					$nome =$_POST['nome'];
					$preco =$_POST['preco'];
					$estoque =$_POST['estoque'];

					echo"<p> Codigo: $codigoprod<br>";
					echo"<p> Nome: $nome<br>";
					echo"<p> Preco: $preco<br>";

					echo "<input type='hidden' name='codigo' value='$codigoprod'>";
					echo "<input type='hidden' name='nome' value='$nome'>";
					echo "<input type='hidden' name='preco' value='$preco'>";
					echo "<input type='hidden' name='estoque' value='$estoque'>";
				
	    			?>
			<input type="submit" value="Comprar">
		</form>
	</body>
</html>
