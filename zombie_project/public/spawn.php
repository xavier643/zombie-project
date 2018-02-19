<?php include_once "../includes/layouts/header.php"; ?>	
<?php include_once "../includes/layouts/redirect.php" ?>



	<!-- Add a place for adding a number of zombie spawns -->
<form action="#" method="post" id= "numInput">
	<div>
	<img src="../includes/image/zombie_spawn.jpg" style="float: left; width: 30%; max-width: 200px; margin-right: 2%; margin-bottom: .5em;">
	<p>This page pulls cards from the session variable and displays the information based on the number you choose and danger level.  Once pulled it will decrease the variable by that number of cards.</p>

	<p>You can have up to 10 spawns.  You can choose the danger zone, Red is most dangerous and blue least.  Currently it just says the word picture because the png's that were being created where never finalized but the intent is for the color to come through the images in that slot.</p>
	
	<p>This entire set up will dynamically create a table of alternating shaders in order to display the data and will recreate the table each time the button is clicked.</p>
	</div>
	
		<p style="clear: both;"></p>
	<p id="labels">Input number of spawns:</p>
	<!-- <form id="numInput"> -->
	<input id="spawnNum" type="number" name="number" min="1" max="10" >
	<!-- </form> -->

	<!-- Add a drop down selector for the color -->

<p id="labels">Choose Danger Level:</p>
	<select id="color" name="choice">
		<option value="Blue">Blue</option>
		<option value="Yellow">Yellow</option>
		<option value="Orange">Orange</option>
		<option value="Red">Red</option>
	</select>
	<br />
	<input type="submit" name="submit" value="SUBMIT" /> <!-- Link to a javascript file to run code -->
</form>
	<table id="spawnTable">
	<tr>
		<th>Picture</th>
		<th>Type</th>
		<th>Number</th>
		<th>Notes</th>
	</tr>
<div id="spawnInfo">
	<?php include "../includes/layouts/function.php"; ?>

</div>
	<!-- Add more rows with example data and make it pretty -->
	<!-- After it is pretty figure out a dynamic way of adjusting number of rows and filling in with data based on random spawn-->
	



<?php include '../includes/layouts/footer.php'; ?>
