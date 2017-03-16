<?php
include('head.php');
?>

<p class="hello">Hello, <?php echo $_REQUEST["name"]; ?>.</p>
<p>Er, wait, who are you, again?</p>
<form action="hello.php">
<fieldset>
<label for="form_name">Your name:</label>
<input id="form_name" type="text" name="name" value="" /><input type="submit" />
</fieldset>
</form>
<?php
include('footer.php');
?>