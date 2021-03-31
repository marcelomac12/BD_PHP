<?php

    $nome = $_GET['nome'];
    $nomeusuario = $_GET['nomeusuario'];
    $data = date('d/m/Y');

    echo"<p> Emprestimo de Livro <br>";
    echo"<p> Nome do Livro: $nome <br>";
    echo"<p> Usuario: $nomeusuario <br>"; 
    echo"<p> Data de Emprestimo: $data <br>";
    
    if ($_GET['tipo']== "professor"){
	$tomorrow = date('d/m/Y', strtotime("+10 days"));
	echo"<p> Data de Devolucao: $tomorrow<br>";
    
     }
    if ($_GET['tipo']== "aluno"){
	$tomorrow = date('d/m/Y', strtotime("+3 days"));
	echo"<p> Data de Devolucao: $tomorrow<br>";
    
     }

?>
