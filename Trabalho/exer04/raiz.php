<?php

    $a = $_GET['a'];
    $b = $_GET['b'];
    $c = $_GET['c'];

    $delta = (pow($b,2)) - (4*$a*$c);
    echo "<p> Delta =$delta <br>";

    if($delta>0){
  	  $raiz1 =  (- ($b) +sqrt($delta))/ (2*$a);
  	  echo"<p> Raiz 1 = $raiz1 <br>";
  	   
  	  $raiz2 =  (-($b) -sqrt($delta))/(2*$a);
  	  echo"<p> Raiz 2 = $raiz2 <br>";
   }
   
   if($delta<0){
	echo"<p> Raizes nao reais<br>";
   }
    
   if($delta==0){
          $raizu = -($b)/ (2*$a);
  	  echo"<p> Raiz unica = $raizu <br>";
  	   
   }

?>
