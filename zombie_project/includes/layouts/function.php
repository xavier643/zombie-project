<?php session_start(); ?>

<?php
	if(isset($_POST['user_login'])) {
		include "../includes/layouts/connect.php";
		$name = $_POST['name'];
		$pwd = $_POST['pwd'];

		if($name != '' && $pwd != '') {
			$query = mysqli_query($con, "SELECT * FROM login WHERE user_name = '".$name."' AND password = '".$pwd."'");
			$res = mysqli_fetch_row($query);

			if($res) {
				$_SESSION['loggedin'] = true;
				$_SESSION['name'] = $name;//Session global variable
				echo "<script>window.location.href='../public/selection.php';</script>";
			}
			else {
				echo "You entered username or password incorrectly <br />";
				echo "You input: $name and $pwd <br />";
				echo "$res <br />";
			}
		}
		else {
				echo "Enter BOTH username and password";
		}
	}

	if(isset($_SESSION['loggedin']) && $_SESSION['loggedin'] == true) {
		//commented out because not needed
		//echo "Thank you for logging in, ".$_SESSION['name']."!";
	} else {
		header("Location: http://arthurdxchampion.com/zombie_project/public/main.php");
		
	}


	function add_row_Zombie($color, $i, $shader) {
		echo "<tr style='background-color: ".$shader."'>";
		echo "<td style='background-color: ".$color."'>Picture</td>";
		echo "<td>".$_SESSION["zombies"][$i][$color.'_type']."</td>";
		echo "<td>".$_SESSION["zombies"][$i][$color.'_num']."</td>";
		echo "<td>".$_SESSION["zombies"][$i]['comments']."</td>";
		echo "</tr>";	
	}

	function add_row_Item($color, $i, $shader) {
		echo "<tr style='background-color: ".$shader."'>";
		echo "<td>".$_SESSION["items"][$i]['equipment_type']."</td>";
		echo "<td>".$_SESSION["items"][$i]['weapon_range']."</td>";
		echo "<td>".$_SESSION["items"][$i]['dice']."</td>";
		echo "<td>".$_SESSION["items"][$i]['accuracy']."</td>";
		echo "<td>".$_SESSION["items"][$i]['damage']."</td>";
		echo "</tr>";
	}

	

	function add_deck($name, $name2) {
		include "../includes/layouts/connect.php";

		$zombie_deck = array();
		$item_deck = array();

		$SQLZombie = "SELECT * FROM ".$name."";
		$SQLItem = "SELECT * FROM ".$name2."";
		$queryZ = mysqli_query($con, $SQLZombie) or die(mysqli_error($con));
		$queryI = mysqli_query($con, $SQLItem) or die(mysqli_error($con));
		
		$index = 0;
		while($row = mysqli_fetch_assoc($queryZ)) {
			$zombie_deck[$index] = $row;
			$index++;
		}
		$index = 0;
		while($row = mysqli_fetch_assoc($queryI)) {
			$item_deck[$index] = $row;
			$index++;
		}
		foreach($zombie_deck as $value) {
			array_push($_SESSION["zombies"], $value);
		}
		foreach($item_deck as $value2) {
			array_push($_SESSION["items"], $value2);
		}
	}

	if(isset($_POST['deck_build'])) {
		include "../includes/layouts/connect.php";
		//echo "<script type='text/javascript'>alert('You clicked a button!');</script>";

		$_SESSION["zombies"] = [];
		$_SESSION["items"] = [];

		if($_POST['seasonOne']=='yes') {
			add_deck('season_1_zombies', 'season_1_items');
		}
		if($_POST['seasonTwo']=='yes') {
			add_deck('prison_outbreak_zombies', 'prison_outbreak_items');
		}
		if($_POST['seasonThree']=='yes') {
			add_deck('toxic_city_mall_zombies', 'toxic_items');
		}
		if($_POST['seasonFour']=='yes') {
			add_deck('rue_morgue_zombies', 'rue_morgue_items');
		}
		if($_POST['seasonFive']=='yes') {
			add_deck('angry_neighbors_zombies', 'angry_neighbors_items');
		}

		shuffle($_SESSION["zombies"]);
		shuffle($_SESSION["items"]);
		echo "<script>window.location.href='../public/spawn.php';</script>";
		
	}

	if(isset($_POST['submit2'])) {
		echo "The following text was added for test reasons when I could not figure out if array had cards or a glitch. <br>";
		echo "Length: ".count($_SESSION["items"])." is how many cards are left in the variable";
		$num = $_POST['number'];
		$selected_val = $_POST['choice'];
		$color = "";
		$i = 0;
		$shader = "#303030";

		//php_test();

		if($_POST['choice']=='pimpCar') {
			$color = "pimpCar";
		}
		elseif ($_POST['choice']=='copCar') {
			$color = "copCar";
		}
		elseif ($_POST['choice']=='room') {
			$color = "room";
		}
		while($i < $num) {
			if($i%2 == 0) {
				$shader = "#707070";
			}
			else {
				$shader = "#303030";
			}
			add_row_Item($color, $i, $shader);
			array_splice($_SESSION["items"], 0, 1);
			$i++;
		}

		if($num != '') {
			//echo "<script type='text/javascript'>alert('You input: '+".$num.");</script>";
		}
		else {
			//echo "<script type='text/javascript'>alert('You input nothing');</script>";
		}
	}

	if(isset($_POST['submit'])) {
		echo "The following text was added for test reasons when I could not figure out if array had cards or a glitch <br>";
		echo "Length: ".count($_SESSION["zombies"])." is how many cards are left in the variable";
		$num = $_POST['number'];
		$selected_val = $_POST['choice'];
		$color = "";
		$i = 0;
		$shader = "#303030";

		//php_test();

		if($_POST['choice']=='Blue') {
			$color = "blue";
		}
		elseif ($_POST['choice']=='Yellow') {
			$color = "yellow";
		}
		elseif ($_POST['choice']=='Orange') {
			$color = "orange";
		}
		elseif ($_POST['choice']=='Red') {
			$color = "red";
		}
		while($i < $num) {
			if($i%2 == 0) {
				$shader = "#707070";
			}
			else {
				$shader = "#303030";
			}
			add_row_Zombie($color, $i, $shader);
			array_splice($_SESSION["zombies"], 0, 1);
			$i++;
		}

		if($num != '') {
			//echo "<script type='text/javascript'>alert('You input: '+".$num.");</script>";
		}
		else {
			//echo "<script type='text/javascript'>alert('You input nothing');</script>";
		}
	}
	
		
?>

<!--
<script>
	function test() {

	var table = document.getElementById("spawnTable");
	var row = table.insertRow(-1);
	var pic = row.insertCell(0); //.style.backgroundColor("white");
	var type = row.insertCell(1);
	var num = row.insertCell(2);
	var notes = row.insertCell(3);
	var numRows = document.getElementsByTagName("tr");
	numRows.length--;
	//alert(numRows.length);

	while(numRows.length > 1) {
		table = document.getElementById("spawnTable")
		row = table.deleteRow(1);
		//alert("Ran with i ="+i);
		//i++;
	}
	
	var numSpawns = document.getElementById("spawnNum").value;
	//var color = document.getElementById("color").value;

	//alert(numSpawns);
	var php_var = "<?php echo $_SESSION['zombies'] ?>";
	var php_var2 = "<?php echo $_SESSION['number'] ?>";
	for(var n = 0; n < numSpawns; n++)
	{
		row = table.insertRow(-1);
		pic = row.insertCell(0).innerHTML= "blah";
		type = row.insertCell(1).innerHTML = php_var;
		num = row.insertCell(2).innerHTML = php_var2;
		notes = row.insertCell(3).innerHTML = "Sewer";
	}
	//row = table.deleteRow(-1);
	//pic.innerHTML.style.color = "blue";
	/*
	pic.style.backgroundColor = "lightblue";
	pic.innerHTML =  "blah";
	type.innerHTML = "Runner";
	num.innerHTML = "5";
	notes.innerHTML = "Sewer";
	*/
	}

	function test1() {
		var table = document.getElementById("searchTable");
		var row = table.insertRow(-1);
		var name = row.insertCell(0);
		var range = row.insertCell(1);
		var dice = row.insertCell(2);
		var tn = row.insertCell(3);
		var dam = row.insertCell(4);

		var numRows = document.getElementsByTagName("tr");
		//alert(numRows.length);
		//alert("Before I = "+i);
		numRows.length--;
		while(numRows.length >1) {
			table = document.getElementById("searchTable")
			row = table.deleteRow(1);
			//alert("Ran");
			//i++;
		}
		//alert("After I = "+i);

		var numSearch = document.getElementById("searchNum").value;

		for(var n = 0; n < numSearch; n++) {
			row = table.insertRow(-1);
			name = row.insertCell(0).innerHTML = "Rifle";
			range = row.insertCell(1).innerHTML = "1-2";
			dice = row.insertCell(2).innerHTML = "3";
			tn = row.insertCell(3).innerHTML = "4+";
			dam = row.insertCell(4).innerHTML = "1";
		}
		
	}
</script>
<!--
<script>
	function shuffle() {
		var setOne = document.getElementById("seasonOne").value;
		var setTwo = document.getElementById("seasonTwo").value;
		var setThree = document.getElementById("seasonThree").value;
		var setFour = document.getElementById("seasonFour").value;
		var setFive = document.getElementById("seasonFive").value;

		var zombieArray = new Array();


		if(setOne == "yes") {
			//Add cards to list to shuffle
		}
		if(setTwo == "yes") {

		}
		if(setThree == "yes") {
			
		}
		if(setFour == "yes") {
			
		}
		if(setFive == "yes") {
			
		}
		if(setSix == "yes") {
			
		}
</script>
-->