<?php 
	include 'connection.php';
	
	$login = $_POST['Login'];
	$entrar = $_POST['Entrar'];
	$senha = md5($_POST['Senha']);
	
	mysqli_set_charset($conexao, "utf8");
	$sqlselect = "Select * From Usuario Where Login = '$login' AND Senha = '$senha'";
		
	  if (isset($entrar)) {
		   
	    $result = mysqli_query($conexao,$sqlselect) or die("Requisição com erros");
	    
	      if (mysql_num_rows($result)<=0){
		echo"<script language='javascript' type='text/javascript'> alert('Login e/ou senha incorretos');window.location.href='Login.html';</script>";
		die();
		
	      }else{
		setcookie("Login",$login);
		header("Location:Principal.php");
	      }
	  }
?>
