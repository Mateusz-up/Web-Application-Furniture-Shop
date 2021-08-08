<?php
    if(!isset($_SESSION)) 
    { 
        session_start(); 

			
	if(isset($_SESSION['id'])) $id_uzytkownika = $_SESSION['id']; 
    } 
include("connect.php");


$idee4=$_POST['idzik4'];
$ilosc4=$_POST['idzik5'];
if($id_uzytkownika!="")
{
	header('Location: index.php');
}


?>
<?php
function usuwanieKosza($idee4,$ilosc4)
{
	
	global $link;
		
	
		
		$zapytanie2 = "update produkty set ilosc=ilosc+$ilosc4 where id=$idee4";
		$sql2 = mysqli_query($link,$zapytanie2) or die ("Źle sformułowane żądanie danych");
		

$zapytanie3 = "delete from koszyk where product_id=$idee4";
$sql3 = mysqli_query($link,$zapytanie3) or die ("Źle sformułowane żądanie danych");

header('Location: wyswietlanie_koszyka.php');
		




}


	usuwanieKosza($idee4,$ilosc4);


?>