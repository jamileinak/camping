<?php
require_once ('connection.php');

$gast_id      = $_POST['gast_id'];
$plaats_id    = $_POST['plaats_id'];
$start_datum  = $_POST['start_datum'];
$end_datum    = $_POST['end_datum'];
$auto         = $_POST['auto'];
$personen     = $_POST['personen'];


$sql = "INSERT INTO reserveringen (gast_id, plaats_id, datum_van, datum_tot, auto, personen) VALUES (:gast_id, :plaats_id, :start_datum, :end_datum, :auto, :personen)";
$prepare = $db->prepare($sql);
$prepare->execute([
    ':gast_id'     => $gast_id,
    ':plaats_id'   => $plaats_id,
    ':start_datum' => $start_datum,
    ':end_datum'   => $end_datum,
    ':auto'        => $auto,
    ':personen'    => $personen
    ]);       

echo '<script>alert("Reservation is successfully registered!"); window.location="../index.php"; </script>';