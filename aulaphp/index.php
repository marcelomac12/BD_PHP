<html>
<meta charset = "utf-8">
	<head><title>PHP teste aula</title></head>
<body>

<?php
ini_set('default_char7', 'UTF-8');
	for($i=0; $i<5; $i++){
		echo "<p> Repetindo ...";
	}
	
	$a = 10;
	$b = 20.45;
	$c = "Programação WEB";
	echo "<p>Variáveis: <br> a = $a <br> b = $b <br> c = $c";
	
	function myFunction($value){
		$value = $value * $value;
		return $value;
	}
	$x = 9;
	echo "<p> Chamando a função --> " . myFunction($x) . " <-- o ponto é utilizado para concatenação.";
	
	function myTest() { 
        $x = 0; 
        echo "<p>".$x; 
        $x++;
        }
        myTest();
        myTest();
        myTest();
        
        function myTest1() { 
        static $y = 0; 
        echo "<p>".$y; 
        $y++;
        }
        myTest1();
        myTest1();
        myTest1();
        
        $z=0;
        function myTest2() {            
        echo "<p>".$GLOBALS['x'];
        $GLOBALS['x']++;
        }
        myTest2();
        myTest2();   
        myTest2();
        
        echo "<table border=1>";
		for($i=0 ; $i<10; $i++){
			echo "<tr>";
			echo "	<td> conteúdo </td>";
			echo "	<td> conteúdo </td>";
			echo "	<td> conteúdo </td>";
			echo "</tr>";
		}
	echo "</table>";
	
	$d = 1;
	while($d <= 5) {
    	echo "O número é: $d <br>";
	$d++;
	}
	
	$e = 1;
	do {
    	echo "O número é: $e <br>";
	$e++;
	} while($x <= 5) ;
	
	$cars = array("Fusca", "Brasilha", "Fiat 147");
        for($x = 0; $x < count($cars); $x++) {    
	echo $cars[$x];
        echo "<br>";
	}
	
	$cars1 = array();
	for($j = 0; $j < 3; $j++) {
   	  $cars1[$j] = $j;
	}
	for($k = 0; $k < count($cars1); $k++) {
      	  echo $cars1[$k];
       	  echo "<br>";
	}
	
	$age = array("Pedro"=>"35", "Ze"=>"37", "Ana"=>"43");
	echo "Pedro tem " . $age['Pedro'] . " anos.";
	
	
?>

</body>
</html>
