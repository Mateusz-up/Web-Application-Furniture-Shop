<?php
     $host = "localhost";
    $db_user = "id17369911_root";
    $db_password = "6~*p#)v/>j#[Nb!f";
    $db_name = "id17369911_projekt_sklep";
    
    $link = mysqli_connect($host, $db_user, $db_password, $db_name)or die ("Nie można nawiązać połączenia z bazą danych.");
    
	mysqli_query($link,"SET CHARSET utf8");
    mysqli_query($link,"SET NAMES `utf8` COLLATE `utf8_polish_ci`"); 
  ?>