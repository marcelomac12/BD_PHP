<html>
   <head><title>IMC</title></head>
   <body>
       <?php
	   if ( isset ($_POST['peso']) && isset ($_POST['altura']) && $_POST['peso']!=0 && $_POST['altura']!=0){
		$peso = $_POST['peso'];
		$altura = $_POST['altura'];
		$imc = $peso/pow($altura,2);
		echo "<p> IMC =$imc";
		}
	?>
	<h3><br>Calculo do imc</h3>
	<form action="formulario.php" method="POST">
	   <p>Peso<br><input type="text" name="peso"><br>
	   <p>Altura<br><input type="text" name="altura"><br>
 	   <p><input type="submit" value="Calcular">
	</form>
   </body>
</html>    
