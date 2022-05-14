<?php
require_once ('connection.php');

$voornaam    = $_POST['voornaam'];
$achternaam  = $_POST['achternaam'];
$adres       = $_POST['adres'];
$postcode    = $_POST['postcode'];
$plaats      = $_POST['plaats'];
$email       = $_POST['email'];


$sql = "INSERT INTO gasten (voornaam, achternaam, adres, postcode, plaats, email) VALUES (:voornaam, :achternaam, :adres, :postcode, :plaats, :email)";
$prepare = $db->prepare($sql);
$prepare->execute([
    ':voornaam'   => $voornaam,
    ':achternaam' => $achternaam,
    ':adres'      => $adres,
    ':postcode'   => $postcode,
    ':plaats'     => $plaats,
    ':email'      => $email
    ]);       

echo '<script>alert("Guest is successfully registered!"); window.location="../add_reservation.php"; </script>';