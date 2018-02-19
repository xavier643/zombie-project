<?php include_once "../includes/layouts/header.php"; ?>	
<?php include_once "../includes/layouts/redirect.php" ?>

	<!-- Add a field that allows for a number of searchs to be inserted -->
<form id="numInput" action="#" method="post" id= "numInput">
	<img src="../includes/image/zombie_search.jpg" style="float: left; width: 30%; max-width: 200px; margin-right: 2%; margin-bottom: .5em;">
	<p>This page pulls cards from the session variable and displays the information based on the number you choose.  Once pulled it will decrease the variable by that number of cards</p>
	<p>Currently you can have up to 5 searches, this allows for extra items helping with searching giving bonuses.  The code did not get finalized to create different search effects, right now it just pulls from the deck uncaring about the location.  Actual game makes it so polic car will force a weapon and pimp mobile only very specific weapons, normal room will allow all sorts of stuff.  This needs to be updated but it works so far as is</p>
	<p>This entire set up will dynamically create a table of alternating shaders in order to display the data and will recreate the table each time the button is clicked.</p>
	
		<p style="clear: both;"></p>
	<p id="labels">Input number of searches:</p>
	
	<input name="number" type="number" id="searchNum" min="1" max="5">
	
	<!-- Add a drop down that will allow to check if "pimp mobile, cop car, normal" -->
	<p id="labels">Choose what location to search:</p>
	<select name="choice">
		<option value="room">Normal Room</option>
		<option value="pimpCar">Pimp Mobile</option>
		<option value="copCar">Police Car</option>
	</select>
	<br />
	<input type="submit" name="submit2" value="SUBMIT" /> <!-- link to javascript code -->
</form>
	<table id="searchTable">
	<tr>
		<th>Equipment Name</th>
		<th>Range</th>
		<th>Dice</th>
		<th>Target Number</th>
		<th>Damage</th>
	</tr>
<div id="searchInfo">
	<?php include "../includes/layouts/function.php"; ?>


	<!-- Add a few extra rows to test view and later dynamically update with data from database -->
	
</div>



<?php include '../includes/layouts/footer.php'; ?>
