<?php

session_start();


// Aktuális lap kiválasztása:
$page = 'kezdolap';
if (isset($_GET['q'])) {
  $page = $_GET['q'];
}

// Aktuális lap betöltése:
switch ($page) {
  case 'kezdolap':
    $pageTitle = "Kezdőlap";
    include('views/frontPage.php');
    break;
  case 'bemutatkozas':
    $pageTitle = "Bemutatkozás";
    include('views/introductionPage.php');
    break;
  case 'kepgaleria':
    $pageTitle = "Képgaléria";
    include('views/imageGalleryPage.php');
    break;    
  case 'kapcsolat':
    $pageTitle = "Kapcsolat";
    include('views/contactPage.php');
    break;    
  default:
    $pageTitle = "Oldal nem található";
    include('views/404Page.php');
}


