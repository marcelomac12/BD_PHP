<?php

    $c1 = $_GET['c1'];
    $c2 = $_GET['c2'];
    $c3 = $_GET['c3'];

    $a = pow($c1,2);
    $b = pow($c2,2);
    $c = pow($c3,2);

    if (($_GET['c1']== $_GET['c2']) && ($_GET['c2']!= $_GET['c3']) || 
        ($_GET['c1']== $_GET['c3']) && ($_GET['c3']!= $_GET['c2']) ||
        ($_GET['c2']== $_GET['c3']) && ($_GET['c3']!= $_GET['c1'])){
	echo"<p> TRIANGULO ISOSCELES !!!<br>";
     }
     else if (($_GET['c1']== $_GET['c2']) && ($_GET['c2']== $_GET['c3'])){
	echo"<p> TRIANGULO EQUILATERO !!!<br>";
     }
     else if(($a == ($b+$c))||($b == ($a+$c))||($c == ($b+$a))){
    	echo"<p> TRIANGULO RETANGULO !!!<br>";
     }
     else {
	echo"<p> TRIANGULO ESCALENO !!!<br>";
     }

   

?>
