<?php session_start(); ?>

<?php include_once "../includes/layouts/header.php"; ?>
	<div align="center">
		<p>This was created by a team of 3 at ECPI in 2017.  The three of us enjoy a game called Zombicide and decided as a group project for our class we would make a web app that would allow for the tracking of cards used in the game to make life easier.</p>

		<p>In step one of the following pages you will have a log in, this connects to a database and shows that we successfully logged into a database</p>

		<p>In step two you will have the ability to select from different sets of the games.  There is a base game and a few expansions.  Each part of the game adds on extra zombie and item cards.  What happens at this stage is that it will pull all the cards for the set from a database.  It creates on array and then shuffles the array to store in a session variable.  It does this for both items and zombies.</p>

		<p>After selecting the sets and clicking it will automatically go to the spawning page.  There is also a searching page.  Both of these pages will pull a card from the end of the array, display then information and then delete it from the array.</p>

		<div align="center">
		<img src="../includes/image/zombie_spawn.jpg" style="float: left; width: 30%; max-width: 200px; margin-right: 2%; margin-bottom: .5em; margin-left: 19%;">
		<img src="../includes/image/zombie_search.jpg" style="float: left; width: 30%; max-width: 200px; margin-right: 2%; margin-bottom: .5em;">
		<p style="clear: both;"></p>
		</div>

		<p>There are a few simple features that are still being worked on when time is available.  Pictures and reacquiring the deck and shuffling when cards run out is two of the main features to be added soon</p>

		<a class="button" href="../public/login.php">CONTINUE</a>
	</div>


