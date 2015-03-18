<?php

$pageTitle = "Feltöltés";

// feltöltés form feldolgozása:
if (isset($_POST['uploadSubmit'])) {
  
	$target= "uploads/"; //célmappa
	$file_name = $_FILES['upload']['name']; 
	$tmp_dir = $_FILES['upload']['tmp_name']; //az ideiglenes mappa helyét a $tmp_dir változóban tároljuk
	
	//var_dump($file_name); die();
	if(!preg_match('/(torrent)$/i', $file_name))  { //csak torrent kiterjesztésű fájlt fogadunk el
		$_SESSION['msg'] = "Rossz fájltípus!"; 
	} else {
		move_uploaded_file($tmp_dir, $target . $file_name); //az ideiglenes mappából átteszi a fájlt a végleges mappába
		$_SESSION['msg'] =  "Fájl feltöltve.";
	}
	
	header("Location: $HOST/admin/?q=feltoltes");
	exit;
}

?>