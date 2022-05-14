<?php require ('header.php'); 
require('backend/connection.php'); ?>

<section class="container">
    <h2>Beschikbaarheid Checker!</h2>
    <form action="backend/availabilityController.php" method="POST">
        <div class="form-group">
            <label for="start_datum">Start Datum</label>
            <input type="date" name="start_datum" class="form-control">
        </div>
        <div class="form-group">
            <label for="end_datum">End Datum</label>
            <input type="date" name="end_datum" class="form-control">
        </div>
        <div class="form-group">
            <?php 
	            $sql = "SELECT plaatsen.id, plaatsen.code, plaatstypen.type 
	            FROM plaatsen
	            INNER JOIN plaatstypen ON plaatsen.plaats_type_id = plaatstypen.id";
	            $query = $db->query($sql);
	            $plaatsen = $query->fetchAll(PDO::FETCH_ASSOC);
            ?>
            <label for="type_id">Kies Plaats</label>
            <select class="form-select" aria-label="Default select example" name="plaats_id">
            <?php 
                foreach($plaatsen as $plaats): 
            ?>
           		 <option value="<?= $plaats['id'] ?>" selected><?= $plaats['code'] ?> <?= $plaats['type'] ?></option>
            <?php endforeach; ?>
            </select>
        </div>
        <input class="btn" type="submit" value="Check">
    </form>
    <hr>
</section>

<?php 
$sql = "SELECT reserveringen.datum_van, reserveringen.datum_tot, reserveringen.auto, reserveringen.personen, gasten.voornaam, gasten.achternaam, plaatstypen.type FROM reserveringen
INNER JOIN gasten
ON reserveringen.gast_id = gasten.id
INNER JOIN plaatsen
ON reserveringen.plaats_id = plaatsen.id
INNER JOIN plaatstypen
ON plaatsen.plaats_type_id = plaatstypen.id";

$query = $db->query($sql);
$reservations = $query->fetchAll(PDO::FETCH_ASSOC);

?>

<section class="container">
    <h1>All Reservations</h1>

    <table class="table">
        <thead>
            <tr>
            <th>Nummer</th>
            <th>Gast</th>
            <th>Plaats</th>
            <th>Datum Van</th>
            <th>Datum Tot</th>
            <th>Auto</th>
            <th>Personen</th>
            </tr>
        </thead>
        <tbody>
		
        <?php 
		$i = 0;
		foreach($reservations as $reservation): 
		$i++;
		?>
            <tr>
            <td><?= $i; ?></td>
            <td><?= $reservation['voornaam'] ?> <?= $reservation['achternaam'] ?></td>
            <td><?= $reservation['type'] ?></td>
            <td><?= $reservation['datum_van'] ?></td>
            <td><?= $reservation['datum_tot'] ?></td>
            <td><?= $reservation['auto'] ?></td>
            <td><?= $reservation['personen'] ?></td>
            </tr>
        <?php endforeach; ?>
        </tbody>
    </table>
</section>

<?php require ('footer.php'); ?>