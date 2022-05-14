<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="css/style.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
	<title>Curio Camping!</title>
</head>
<body>
	<header>
		<div class="container" id="topheader">
			<nav class="navbar navbar-default">
			  <div class="container-fluid">
			    <div class="navbar-header">
			      <a class="navbar-brand" href="http://localhost/pechhulp/">Curio Camping!</a>
			    </div>
			    <ul class="nav navbar-nav">
			      <li class="active"><a href="http://localhost/camping/">Home</a></li>
                  <li><a href="add_reservation.php">Add Reservation</a></li>
			    </ul>
			  </div>
			</nav>	
    </div>
	</header>
    
<script>
    $(document).ready(function () {
        var location = window.location.href;
        $('#topheader .navbar-nav a').each(function(){
            if(location.indexOf(this.href)>-1) {
                $( '#topheader .navbar-nav' ).find( 'li.active' )
                 .removeClass( 'active' );
               $(this).parent().addClass('active');
            }
        });
    });
</script>