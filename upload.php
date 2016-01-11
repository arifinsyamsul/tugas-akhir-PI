<?php
	// session_start();
	
	if(isset($_COOKIE['user']) && $_COOKIE['user'] == 'login' or 'admin'){
	?>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Web Pengarsipan</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/business-casual.css" rel="stylesheet">

    <!-- Fonts -->
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800" rel="stylesheet" type="text/css">
    <link href="http://fonts.googleapis.com/css?family=Josefin+Slab:100,300,400,600,700,100italic,300italic,400italic,600italic,700italic" rel="stylesheet" type="text/css">

</head>

<body>

    <div class="brand">Web Perngarsipan</div>
    <div class="address-bar">Surat dan Dokumen</div>

    <!-- Navigation -->
    <nav class="navbar navbar-default" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <!-- navbar-brand is hidden on larger screens, but visible when the menu is collapsed -->
                <a class="navbar-brand" href="admin.php">Web Perngarsipan</a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                 <ul class="nav navbar-nav">
            <li><a href="admin.php">Home</a></li>
			<!--<li><a href="profil.php">Profil</a></li>-->
			<!--<li class="dropdown">							
				<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" >Arsip</a>
				<ul class="dropdown-menu">
					<li><a href="dokumen.php">Dokumen</a></li>
					<li role="separator" class="divider"></li>
					<li><a href="surat.php">Surat</a></li>
				</ul>	<!-- tutup list dropdown -->			
			<!--</li>-->
			<li class="dropdown">
				<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" >Upload</a>
				<ul class="dropdown-menu">
					<li><a href="upload.php?page=up_dokumen">Upload Dokumen</a></li>
					<li role="separator" class="divider"></li>
					<li><a href="upload.php?page=up_surat">Upload Surat</a></li>
				</ul>
			</li>
			<li><a href="logout.php">Logout</a></li>
          </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>

    <div class="container">

        <div class="main">
           <?php

            if(isset($_GET['page']) &&
               ($_GET['page'] == 'up_surat' || $_GET['page'] == 'edit_surat'))
                include "up_surat.php";
            else
                include "up_dokumen.php";

            ?>
	</div>

    </div>
    <!-- /.container -->

    <footer>
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <p>Copyright &copy; Web Pengarsipan</p>
                </div>
            </div>
        </div>
    </footer>

    <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>



</body>

</html>
<?php
	} else {
	header("location:login.php");
	}
