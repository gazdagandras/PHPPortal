<?php include('includes/header.php'); ?>

<div id="content">

	<?php if (isset($_SESSION['msg'])) : ?>
	
		<p><?php echo $_SESSION['msg']; unset($_SESSION['msg']); ?></p>
	
		<br>
		<ul id="navigation" class="nav nav-pills">
		<li role="presentation"><a href="?q=feltoltes">Új feltöltés</a></li>
		</ul>
	
	<?php else : ?>
	
		<h2>Egyszerű fájlfeltöltés</h2>
		
		<form enctype="multipart/form-data" method="post">
			<input type="hidden" name="MAX_FILE_SIZE" value="3000000"> <!-- a feltöltött file maximális mérete 3MB -->
			<label>Válassz egy fájlt!</label>
			<br>
			<input type="file" name="upload">
			<input type="submit" name="uploadSubmit" value="Feltöltés">
		</form>
  
	<?php endif; ?>
	
</div>

<?php
include('includes/footer.php');
