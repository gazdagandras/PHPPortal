<?php

$pageTitle = "Kezdőlap";
// Hírek kiolvasása adatbázisból:
$db = new mysqli('localhost', 'root', '', 'phpportal');
$db->set_charset('utf8');
$query = "SELECT * FROM `news`";
$news = $db->query($query);
if ($db->errno) {
  die($db->error);
}
$db->close();
