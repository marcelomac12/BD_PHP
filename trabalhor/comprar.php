<?php
	include 'connection.php';
	$quantidade = $_POST['quantidade'];
	$codigoprod = $_POST['codigo'];
	$nome =$_POST['nome'];
	$preco =$_POST['preco'];
	$estoque =$_POST['estoque'];

	echo"<p> Codigo: $codigoprod<br>";
	echo"<p> Nome: $nome<br>";
	echo"<p> Preco unitario: $preco<br>";
	echo"<p> Quantidade: $quantidade <br>";
    	echo"<p> Estoque: $estoque <br>";
    

	if ($_POST['quantidade']> $_POST['estoque']){
		echo"<p> Estoque insuficiente para compra! <br>";
    	} 
	else
	$estoque = $estoque - $quantidade;
	echo"<p>NOVO ESTOQUE: $estoque <br>";
	$preco = $quantidade * $preco;
	echo"<p>PRECO TOTAL DA COMPRA: $preco <br>";

	$sqlinsert = "Insert Into VendaProduto(Quantidade, CodVenda, CodProduto) Values($quantidade,$codigovenda,$codigoprod)";	
	mysqli_query($conexao,$sqlinsert) or die("Erro ao cadastrar venda de produto.");
	
	echo "<p><a href='selecionar.php'>SELECIONAR MAIS PRODUTOS</a>";
	echo "<p><a href='vendas.html'>FINALIZAR COMPRA</a>";
	

?>
