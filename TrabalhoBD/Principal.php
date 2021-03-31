<?php
	
$login_cookie = $_COOKIE['Login'];
    if(isset($login_cookie)){
      echo"Bem-Vindo, $login_cookie <br>";
      echo"Essas informações <font color='red'>PODEM</font> ser acessadas por você";
      
      echo "<a href='ForminserirUsuario.php'>Inserir Usuario</a> <p>";
      echo "<a href='formmanipulausuario.php'>Manipular Usuario</a> <p>";
    }else{
      echo"Bem-Vindo, convidado <br>";
      echo"Essas informações <font color='red'>NÃO PODEM</font> ser acessadas por você";
      echo"<br><a href='login.html'>Faça Login</a> Para ler o conteúdo";
    }
    
?>
