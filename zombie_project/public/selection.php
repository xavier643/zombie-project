
<?php include_once "../includes/layouts/header.php"; ?>	
<?php include_once "../includes/layouts/redirect.php" ?>

<div id="selection" align="center">
<h3>Set Selection</h3>

<p>Choose which sets are going to be in play</p>
<!-- FIGURE OUT HOW TO USE THIS DATA WHEN STARTING NEXT PAGE!! -->
<form action="#" method="post" id="deck">
	<fieldset align="center">
		<div data-role="fieldcontain" >
		<label for="select-based-flipswitch">Season 1</label>
		<select id="seasonOne" data-role="flipswitch" name="seasonOne">
			<option value="no">N/a</option>
			<option value="yes">Use</option>
		</select>
		</div>
	</fieldset>

	<fieldset>
		<div data-role="fieldcontain">
		<label for="select-based-flipswitch">Prison Outbreak</label>
		<select id="seasonTwo" data-role="flipswitch" name="seasonTwo">
			<option value="no">N/a</option>
			<option value="yes">Use</option>
		</select>
		</div>
	</fieldset>

	<fieldset>
		<div data-role="fieldcontain">
		<label for="select-based-flipswitch">Toxic City Mall</label>
		<select id="seasonThree" data-role="flipswitch" name="seasonThree">
			<option value="no">N/a</option>
			<option value="yes">Use</option>
		</select>
		</div>
	</fieldset>

	<fieldset>
		<div data-role="fieldcontain">
		<label for="select-based-flipswitch">Rue Morgue</label>
		<select id="seasonFour" data-role="flipswitch" name="seasonFour">
			<option value="no">N/a</option>
			<option value="yes">Use</option>
		</select>
		</div>
	</fieldset>

	<fieldset>
		<div data-role="fieldcontain">
		<label for="select-based-flipswitch">Angry Neighbors</label>
		<select id="seasonFive" data-role="flipswitch" name="seasonFive">
			<option value="no">N/a</option>
			<option value="yes">Use</option>
		</select>
		</div>
	</fieldset>
	<h1>After choosing the sets you own, it will pull from a database and create one session array and shuffle all the cards. These will then be carried over to the following pages for zombie spawns and item searches.</h1>
	<input type="submit" name="deck_build" value="SUBMIT" />
</form>
</div>



<?php include "../includes/layouts/function.php"; ?>

<?php include '../includes/layouts/footer.php'; ?>
