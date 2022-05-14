<?php
require_once ('connection.php');

$start_datum  = $_POST['start_datum'];
$end_datum    = $_POST['end_datum'];
$plaats_id  = $_POST['plaats_id'];

$sql = "SELECT * FROM reserveringen WHERE plaats_id = :plaats_id AND (datum_van BETWEEN :start_datum AND :end_datum OR datum_tot BETWEEN :start_datum AND :end_datum OR datum_van<:start_datum AND datum_tot>:end_datum)";
$query = $db->prepare($sql);
$query->execute([
':plaats_id'      => $plaats_id,
':start_datum'    => $start_datum,
':end_datum'      => $end_datum
]);
$reservationExist = $query->rowCount();

if ($reservationExist) {

        function function_alert($message) { 

            echo "<script>alert('$message');</script>"; 
        } 
          
        function_alert("Helaas, deze plaats is niet beschikbaar voor deze periode!"); 
        die(header("Refresh: 0; URL=../index.php"));
}
else{
    function function_alert($message) { 

        echo "<script>alert('$message');</script>"; 
    } 
      
    function_alert("Deze plaats is nog beschikbaar!"); 
    die(header("Refresh: 0; URL=../index.php"));
}