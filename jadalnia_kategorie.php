<?php

session_start();
if(isset($_SESSION['id'])) $id_uzytkownika = $_SESSION['id']; 
if(isset($_SESSION['email'])) $login = $_SESSION['email']; 
include("connect.php");



?>


<!DOCTYPE html>
<html lang="pl">

<head>
<meta charset="utf-8" />
<title>Sklep meblowy MD</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="Meble do salonu, sypialni,łazienki,jadalni i kuchni."/>
<meta name="keywords" content="meble,kuchnia,sypialnia,jadalnia,salon" />
<link href="style.css" rel="stylesheet" type="text/css" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.0/jquery.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
<link href="https://fonts.googleapis.com/css?family=Merriweather:400,900,900i" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>




</head>


<body>

		

<div class="container-fluid">
		
<br><br><br>
 <?php
		
		
			
			
		
		echo'<nav class="navbar navbar-expand-xl bg-dark navbar-dark" style="position: relative;bottom:0.9cm;padding:17px">';
		echo'
				<a class="navbar-brand mx-auto" href="index.php"> <img class="img-fluid" src="images/logo.png" width="180" height="180"></a>
				<button class="navbar-toggler" type="button" data-toggle="collapse" data-target=".dual-collapse2">
					<span class="navbar-toggler-icon"></span>
				</button>';
		   
		
		
		
		
		
		
		
				echo'<div class="navbar-collapse collapse w-100 order-2 dual-collapse2">';
				echo'<ul class="navbar-nav ml-auto">';
				echo'<li class="nav-item ">
				<form class="form-inline" action="wyszukiwarka.php" method="post" >
				<input class="form-control mr-sm-2 " name="wartosc" type="text" placeholder="Szukaj..." required>
				<button class="btn btn-success" text-center type="submit" style="position: relative; top:0.11cm;">Szukaj</button>
				
				</form>
				</li>';
				echo'</ul>';
				echo'</div>';
		
		
		
		echo'<div class="navbar-collapse collapse w-100 order-3 dual-collapse2">';
		echo'<ul class="navbar-nav ml-auto">';
		echo'  <li class="nav-item">';
		echo'   <a class="nav-link " href="wyswietlanie_koszyka.php">  
		<i class="fa fa-shopping-cart"  data-toggle="tooltip" data-placement="bottom" title="Koszyk" style="font-size:24px;color:white; padding:1px"></i></a>';
		echo' 	</li>';
		if(isset($id_uzytkownika)!="")
			{}
			else{
		echo'  <li class="nav-item">';
		echo'   <a class="nav-link " href="rejestracja.php"><i class="fa fa-registered" aria-hidden="true"></i>  Rejestracja</a>';
		echo' 	</li>';
		
		echo'  <li class="nav-item ">';
		echo'   <a class="nav-link " href="logowanie.php"><i class="fa fa-sign-in" aria-hidden="true" ></i> Logowanie</a>';
		echo' 	</li>';
		}
		
		echo'</ul>';
		
		
		echo'  </div>';
		
		echo' </nav>';
		
		?>
		
		
			 
		<?php
		
		
		if(isset($id_uzytkownika)!="")
		
			{
				echo'<div class="jumbotron lolek text-center" style="opacity:0.8;position: relative;bottom:0.9cm;"">';
				echo'<b>';
				echo'<div class="row">';
				echo'<div class="col-sm-3">';
				echo"<div class='powitanie'>Witaj ".$_SESSION['user']."</div>";
				
				echo'<br>';
				echo'</div>';
				echo'<div class="col-sm-3">';
					echo "<div class='powEmail'>Email: ".$_SESSION['email'],"</div>";
					echo'<br>';
					echo'</div>';
				
					echo'<div class="col-sm-3">';
					if($id_uzytkownika!=5){
						
				echo'<div class="Konto"><a href="panel_uzytkownika.php"><i class="fa fa-user" aria-hidden="true"></i>  Twoje konto</a></div>';
				
					}
					else{
						echo'<div class="Konto"><a href="panel_admina.php">Panel admina</a></div>';
					}
					echo'</div>';
					echo'<br><br>';
					echo'<div class="col-sm-2">';
					echo'<div class="Wylogowanie">
		<a href="logout.php"><i class="fa fa-sign-out"></i>  Wyloguj się</a></div>';
					echo'<br>';
					echo'</div>';
					echo'</div>';
					echo'</b>';
			echo'</div>';
			}
			
			
		
		?>


<?php

if(isset($id_uzytkownika)!="")
	{
echo'
<nav class="navbar navbar-expand-xl navbar-dark " style="background-color:darkgoldenrod;position: relative; bottom:1.8cm;">
     <div class="mx-auto order-0">
        <a class="navbar-brand mx-auto" href="#"></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target=".dual-collapse3">
            <span class="navbar-toggler-icon"></span>
        </button>
    </div>
    <div class="navbar-collapse collapse w-100 order-1 order-md-0 dual-collapse3">
        <ul class="navbar-nav mr-auto">
		<li class="nav-item dropdown">
      <a class="nav-link dropdown-toggle" style="color:whitesmoke;" href="#" id="navbardrop" data-toggle="dropdown">
       Kuchnia
      </a>
      <div class="dropdown-menu " style="background-color:darkgoldenrod">
        <a class="dropdown-item" href="krzesla_kuchnia.php">Krzesła</a>
        <a class="dropdown-item" href="stoly_kuchnia.php">Stoły</a></a>
        <a class="dropdown-item" href="szafki_kuchnia.php">Szafki</a>
		<a class="dropdown-item" href="blaty_kuchnia.php">Blaty</a>
      </div>
    </li>

	<li class="nav-item dropdown ">
      <a class="nav-link dropdown-toggle" style="color:whitesmoke;"  href="#" id="navbardrop" data-toggle="dropdown">
       Łazienka
      </a>
      <div class="dropdown-menu " style="background-color:darkgoldenrod">
        <a class="dropdown-item" href="lazienka_lustra.php">Lustra</a>
        <a class="dropdown-item" href="lazienka_umywalki.php">Umywalki</a></a>
        <a class="dropdown-item" href="lazienka_szafki.php">Szafki</a>
		<a class="dropdown-item" href="lazienka_akcesorie_lazienkowe.php">Akcesoria Łazienkowe</a>
      </div>
    </li>

	<li class="nav-item dropdown">
      <a class="nav-link dropdown-toggle" style="color:whitesmoke;"  href="#" id="navbardrop" data-toggle="dropdown">
       Salon
      </a>
      <div class="dropdown-menu" style="background-color:darkgoldenrod">
        <a class="dropdown-item" href="salon_stoly.php">Stoły</a>
        <a class="dropdown-item" href="salon_szafy.php">Szafy</a></a>
        <a class="dropdown-item" href="salon_narozniki.php">Narożniki</a>
		<a class="dropdown-item" href="salon_krzesla.php">Krzesła</a>
      </div>
    </li>

	<li class="nav-item dropdown">
      <a class="nav-link dropdown-toggle" style="color:whitesmoke;"  href="#" id="navbardrop" data-toggle="dropdown">
       Jadalnia
      </a>
      <div class="dropdown-menu" style="background-color:darkgoldenrod">
        <a class="dropdown-item" href="jadalnia_krzesla.php">Krzesła</a>
        <a class="dropdown-item" href="jadalnia_stoly.php">Stoły</a></a>
        <a class="dropdown-item" href="jadalnia_komody.php">Komody</a>
		<a class="dropdown-item" href="jadalnia_witryny.php">Witryny</a>
      </div>
    </li>

	<li class="nav-item dropdown">
      <a class="nav-link dropdown-toggle" style="color:whitesmoke;"  href="#" id="navbardrop" data-toggle="dropdown">
       Sypialnia
      </a>
      <div class="dropdown-menu" style="background-color:darkgoldenrod">
        <a class="dropdown-item" href="sypialnia_lozka.php">Łóżka</a>
        <a class="dropdown-item" href="sypialnia_szafy.php">Szafy</a></a>
        <a class="dropdown-item" href="sypialnia_materace.php">Materace</a>
		<a class="dropdown-item" href="sypialnia_lustra.php">Lustra</a>
      </div>
    </li>
        </ul>
    </div>
   
    <div class="navbar-collapse collapse w-100 order-3 dual-collapse3">
        <ul class="navbar-nav ml-auto">
		<li class="nav-item">
      <a class="nav-link" style="color:whitesmoke;" href="regulamin.php">Regulamin</a>
    </li>
		
	<li class="nav-item">
      <a class="nav-link "style="color:whitesmoke;" href="kontakt.php"> Kontakt</a>
    </li>
		
	<li class="nav-item">
      <a class="nav-link" style="color:whitesmoke;" href="promocja.php"> Promocje</a>
    </li>
        </ul>
    </div>
</nav>';
	}
	else{
echo'
<nav class="navbar navbar-expand-xl navbar-dark " style="background-color:darkgoldenrod;position: relative; bottom:0.9cm;">
     <div class="mx-auto order-0">
        <a class="navbar-brand mx-auto" href="#"></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target=".dual-collapse3">
            <span class="navbar-toggler-icon"></span>
        </button>
    </div>
    <div class="navbar-collapse collapse w-100 order-1 order-md-0 dual-collapse3">
        <ul class="navbar-nav mr-auto">
		<li class="nav-item dropdown">
      <a class="nav-link dropdown-toggle" style="color:whitesmoke;" href="#" id="navbardrop" data-toggle="dropdown">
       Kuchnia
      </a>
      <div class="dropdown-menu " style="background-color:darkgoldenrod">
        <a class="dropdown-item" href="krzesla_kuchnia.php">Krzesła</a>
        <a class="dropdown-item" href="stoly_kuchnia.php">Stoły</a></a>
        <a class="dropdown-item" href="szafki_kuchnia.php">Szafki</a>
		<a class="dropdown-item" href="blaty_kuchnia.php">Blaty</a>
      </div>
    </li>

	<li class="nav-item dropdown ">
      <a class="nav-link dropdown-toggle" style="color:whitesmoke;"  href="#" id="navbardrop" data-toggle="dropdown">
       Łazienka
      </a>
      <div class="dropdown-menu " style="background-color:darkgoldenrod">
        <a class="dropdown-item" href="lazienka_lustra.php">Lustra</a>
        <a class="dropdown-item" href="lazienka_umywalki.php">Umywalki</a></a>
        <a class="dropdown-item" href="lazienka_szafki.php">Szafki</a>
		<a class="dropdown-item" href="lazienka_akcesorie_lazienkowe.php">Akcesoria Łazienkowe</a>
      </div>
    </li>

	<li class="nav-item dropdown">
      <a class="nav-link dropdown-toggle" style="color:whitesmoke;"  href="#" id="navbardrop" data-toggle="dropdown">
       Salon
      </a>
      <div class="dropdown-menu" style="background-color:darkgoldenrod">
        <a class="dropdown-item" href="salon_stoly.php">Stoły</a>
        <a class="dropdown-item" href="salon_szafy.php">Szafy</a></a>
        <a class="dropdown-item" href="salon_narozniki.php">Narożniki</a>
		<a class="dropdown-item" href="salon_krzesla.php">Krzesła</a>
      </div>
    </li>

	<li class="nav-item dropdown">
      <a class="nav-link dropdown-toggle" style="color:whitesmoke;"  href="#" id="navbardrop" data-toggle="dropdown">
       Jadalnia
      </a>
      <div class="dropdown-menu" style="background-color:darkgoldenrod">
        <a class="dropdown-item" href="jadalnia_krzesla.php">Krzesła</a>
        <a class="dropdown-item" href="jadalnia_stoly.php">Stoły</a></a>
        <a class="dropdown-item" href="jadalnia_komody.php">Komody</a>
		<a class="dropdown-item" href="jadalnia_witryny.php">Witryny</a>
      </div>
    </li>

	<li class="nav-item dropdown">
      <a class="nav-link dropdown-toggle" style="color:whitesmoke;"  href="#" id="navbardrop" data-toggle="dropdown">
       Sypialnia
      </a>
      <div class="dropdown-menu" style="background-color:darkgoldenrod">
        <a class="dropdown-item" href="sypialnia_lozka.php">Łóżka</a>
        <a class="dropdown-item" href="sypialnia_szafy.php">Szafy</a></a>
        <a class="dropdown-item" href="sypialnia_materace.php">Materace</a>
		<a class="dropdown-item" href="sypialnia_lustra.php">Lustra</a>
      </div>
    </li>
        </ul>
    </div>
   
    <div class="navbar-collapse collapse w-100 order-3 dual-collapse3">
        <ul class="navbar-nav ml-auto">
		<li class="nav-item">
      <a class="nav-link" style="color:whitesmoke;" href="regulamin.php">Regulamin</a>
    </li>
		
	<li class="nav-item">
      <a class="nav-link "style="color:whitesmoke;" href="kontakt.php"> Kontakt</a>
    </li>
		
	<li class="nav-item">
      <a class="nav-link" style="color:whitesmoke;" href="promocja.php"> Promocje</a>
    </li>
        </ul>
    </div>
</nav>';

	}
?>


<?php

if(isset($id_uzytkownika)!="")
	{

		echo'
<div class="picutres" style="position: relative; bottom:1.1cm;">


<div class="bg-image img1">
<a  href="jadalnia_krzesla.php">
<img src="https://www.ikea.com/images/9f/0a/9f0a2c12f9e2851379a15ae47e1dca01.jpg" class="responsive" alt="Kuchnia">

<div class="content">
    <h10>Krzesła</h10>
   
  </div>
  </a>
</div>
<br>
<div class="bg-image img2">
<a  href="jadalnia_stoly.php">

<img src="https://www.ikea.com/images/32/f5/32f5e7fdd0f7a117c4d7abd32307721f.jpg"  class="responsive" alt="Łazienka">
<div class="content">

    <h10>Stoły</h10>
    
  </div>
  </a>
</div>
<br>
<div class="bg-image img3">
<a href="jadalnia_komody.php">
<img src="https://www.ikea.com/images/sofa-3-osobowa-dywan-tkany-na-plasko-rattanowy-fotel-z-podus-0ac620bb7c754ffa215575fc686e4142.jpg" class="responsive" alt="Salon">

<div class="content">
    <h10>Komody</h10>
   
  </div>
  </a>
</div>
<br>

<div class="bg-image img4">
<a href="jadalnia_witryny.php">
<img src="https://www.ikea.com/images/maly-pokoj-dzienny-z-zielonymi-scianami-sofa-kacikiem-jadaln-70f0acd74fd087ac4de827c2ad4337be.jpg" class="responsive" alt="Jadalnia">
<div class="content">
    <h10>Witryny</h10>
 
  </div>
  </a>
</div>


</div>';
	}


	else{

echo'
<div class="picutres" style="position: relative; bottom:0.2cm;">
<div class="bg-image img1">
<a  href="jadalnia_krzesla.php">
<img src="https://www.ikea.com/images/9f/0a/9f0a2c12f9e2851379a15ae47e1dca01.jpg" class="responsive" alt="Kuchnia">

<div class="content">
    <h10>Krzesła</h10>
   
  </div>
  </a>
</div>
<br>
<div class="bg-image img2">
<a  href="jadalnia_stoly.php">

<img src="https://www.ikea.com/images/32/f5/32f5e7fdd0f7a117c4d7abd32307721f.jpg"  class="responsive" alt="Łazienka">
<div class="content">

    <h10>Stoły</h10>
    
  </div>
  </a>
</div>
<br>
<div class="bg-image img3">
<a href="jadalnia_komody.php">
<img src="https://www.ikea.com/images/sofa-3-osobowa-dywan-tkany-na-plasko-rattanowy-fotel-z-podus-0ac620bb7c754ffa215575fc686e4142.jpg" class="responsive" alt="Salon">

<div class="content">
    <h10>Komody</h10>
   
  </div>
  </a>
</div>
<br>

<div class="bg-image img4">
<a href="jadalnia_witryny.php">
<img src="https://www.ikea.com/images/af/d0/afd0fd2e6a28e53f4e2f66a0051498cd.jpg?f=xxxl" class="responsive" alt="Jadalnia">
<div class="content">
    <h10>Witryny</h10>
 
  </div>
  </a>
</div>
</div>';
	}

?>


	<div class="row text-center">
	<div class="col">
<a id="button"></a>
	</div>
</div>


</div>

	
<div class="jumbotron text-center" style="margin-bottom:0;">

<div class="row ">
    <div class="col-sm-4">
      <h3>Dla klientów</h3>
      <br>
<a href="regulamin.php" style="text-decoration: none; color:darkgreen;">Regulamin</a>
<br><br>
<a href="kontakt.php" style="text-decoration: none; color:darkgreen;"> Kontakt</a>
    </div>
    
    <div class="col-sm-4">
      <h3>Infolinia</h3>
      <br>
<p style="color:saddlebrown;">444 231 242</p>
</div>
<div class="col-sm-4">
    <h3> Godziny otwarcia</h3>
<br>
	<p style="color: darkblue;">pn - pt od 8:00 do 20:00
	<br>
	sob - nd od 10:00 do 15:00</p>
</div>
    
  </div>
</div>
	


<script src="jquery-3.4.1.min.js"></script>

<script>
var btn = $('#button');

$(window).scroll(function() {
if ($(window).scrollTop() > 200) {
btn.addClass('show');
} else {
btn.removeClass('show');
}
});

btn.on('click', function(e) {
e.preventDefault();
$('html, body').animate({scrollTop:0}, '300');
});

</script>



		
</body>
</html>