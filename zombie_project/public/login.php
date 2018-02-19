<?php include_once "../includes/layouts/header.php"; ?>
<?php session_start(); ?>


<h1 align="center">Login</h1>
<h1 align="center">User Name = user</h1>
<h1 align="center">Password = password</h1>

<form action="#" method="post" id="login">
	<table cellspacing="5" align="center">
		<tr>
			<td>User Name:</td>
			<td><input type="text" name="name" /></td>
		</tr>
		<tr>
			<td>Password:</td>
			<td><input type="password" name="pwd" /></td>
		</tr>
		<tr>
			<td></td>
			<td><input type="submit" name="user_login" value="SUBMIT" /></td>
		</tr>
	</table>
</form>

<?php include "../includes/layouts/function.php"; ?>
