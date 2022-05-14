<?php require ('header.php'); 
require_once ('backend/connection.php'); ?>

<div class="container">
    <div class="row">
        <div class="col-md-6">
           <section class="">
                <h2>Add new Reservation!</h2>
                <form action="backend/reservationController.php" method="POST">
                    <div class="form-group">
                        <?php 
                            $sql = "SELECT gasten.id, gasten.voornaam, gasten.achternaam 
                            FROM gasten";
                            $query = $db->query($sql);
                            $gasten = $query->fetchAll(PDO::FETCH_ASSOC);
                        ?>
                        <label for="type_id">Select Guest</label>
                        <select class="form-select" aria-label="Default select example" name="gast_id">
                        <?php 
                            foreach($gasten as $gast): 
                        ?>
                             <option value="<?= $gast['id'] ?>" selected><?= $gast['voornaam'] ?> <?= $gast['achternaam'] ?></option>
                        <?php endforeach; ?>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="start_datum">Start Datum</label>
                        <input type="date" name="start_datum" class="form-control" id="start_datum" onchange="dates()">
                    </div>
                    <div class="form-group">
                        <label for="end_datum">End Datum</label>
                        <input type="date" name="end_datum" class="form-control" id="end_datum" onchange="dates()">
                    </div>
                    <div class="form-group">
                        <?php 
                            $sql = "SELECT plaatsen.id, plaatsen.code, plaatstypen.type 
                            FROM plaatsen
                            INNER JOIN plaatstypen ON plaatsen.plaats_type_id = plaatstypen.id";
                            $query = $db->query($sql);
                            $plaatsen = $query->fetchAll(PDO::FETCH_ASSOC);
                        ?>
                        <script>
                            function dates(){
                                var start_datum = "04/21/2022";
                                var end_datum = "04/21/2022";
                            }
                        </script>

                        <?php 
                        $start_datum  = "<script>document.write(start_datum)</script>";
                        $end_datum    = "<script>document.write(end_datum)</script>";  
                        ?>

                        <label for="type_id">Kies Plaats</label>
                        <select class="form-select" aria-label="Default select example" name="plaats_id">
                        <?php foreach($plaatsen as $plaats): ?>
                             <option value="<?= $plaats['id'] ?>" selected><?= $plaats['code'] ?> <?= $plaats['type'] ?></option>
                        <?php endforeach; ?>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="auto">Number of cars</label>
                        <input type="number" name="auto" class="form-control">
                    </div>
                    <div class="form-group">
                        <label for="personen">Number of persons</label>
                        <input type="number" name="personen" class="form-control">
                    </div>
                    <input class="btn" type="submit" value="Add Reservation">
                </form>
            </section> 
        </div>
        <div class="col-md-6">
             <section class="">
                <h2>Add new Guest!</h2>
                <form action="backend/guestController.php" method="POST">
                    <div class="form-group">
                        <label for="voornaam">Voornaam</label>
                        <input type="text" name="voornaam" class="form-control">
                    </div>
                    <div class="form-group">
                        <label for="achternaam">Achternaam</label>
                        <input type="text" name="achternaam" class="form-control">
                    </div>
                    <div class="form-group">
                        <label for="adres">Adres</label>
                        <input type="text" name="adres" class="form-control">
                    </div>
                    <div class="form-group">
                        <label for="postcode">Postcode</label>
                        <input type="text" name="postcode" class="form-control">
                    </div>
                    <div class="form-group">
                        <label for="plaats">Plaats</label>
                        <input type="text" name="plaats" class="form-control">
                    </div>
                    <div class="form-group">
                        <label for="email">Email</label>
                        <input type="email" name="email" class="form-control">
                    </div>
                    <input class="btn" type="submit" value="Add Guest">
                </form>
            </section> 
        </div>
    </div>
</div>

<?php require ('footer.php'); ?>