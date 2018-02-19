<?php session_start(); ?>

<?php
	if(isset($_SESSION['loggedin']) && $_SESSION['loggedin'] == true) {
		echo "Thank you for logging in, ".$_SESSION['name']."!";
	} else {
		//header() only works if prior to other outputs, could not get to work properly...
		//header("Location: http://arthurdxchampion.com/zombie_project/public/main.php");
		$URL = "http://arthurdxchampion.com/zombie_project/public/main.php";
		echo "<script type='text/javascript'>document.location.href='{$URL}';</script>";
		echo "<META HTTP-EQUIV='refresh' content='0;URL=".$URL.".>";
		die();
	}
?>