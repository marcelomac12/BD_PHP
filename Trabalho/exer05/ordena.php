<?php

    $a1 = $_GET['a1'];
    $a2 = $_GET['a2'];
    $a3 = $_GET['a3'];
    $a4 = $_GET['a4'];
    $a5 = $_GET['a5'];

    $alunos = array("$a1","$a2","$a3","$a4","$a5");
    sort($alunos);
    
    for($x=0;x<count($alunos);$x++){
       echo "<p> $alunos[$x] <br>";
}

?>
