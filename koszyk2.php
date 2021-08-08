<?php
session_start();
if(isset($_SESSION['id'])) $id_uzytkownika = $_SESSION['id']; 
if(isset($_SESSION['email'])) $login = $_SESSION['email']; 
include("connect.php");
$ilosc3=$_POST['ile3'];
$idee3=$_POST['idzik3'];
?>
<?php
	function add($ilosc3,$idee3)
	{
		
		global $link;
		
		if(isset($_SESSION['id'])!="")
			
		{
		$id_uzytkownika = $_SESSION['id'];
		$zapytanie="insert into koszyk(id,id_uzytkownika,id_promocji,ilosc_produktow,data) values(null,$id_uzytkownika,$idee3,$ilosc3,NOW())";
		$sql=mysqli_query($link,$zapytanie) or die ("Żle sformułowane zadanie danych");
		$zapytanie2 = "update promocja set ilosc=ilosc-$ilosc3 where id=$idee3";
		$sql2 = mysqli_query($link,$zapytanie2) or die ("Źle sformułowane żądanie danych");
		header('Location: wyswietlanie_koszyka.php');
		
		}
		else
		{
			header('Location: logowanie.php');
		
		}
		
		
	}
		
	
	
	add($ilosc3,$idee3);	
?>