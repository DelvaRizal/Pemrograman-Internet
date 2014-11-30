<!DOCTYPE html>
<html>
<head>
	<title></title>
	<link rel="stylesheet" href="styles.css">
</head>
<body>
	<?php
	echo "<html><body><table id='tabel'><thead><tr><th>Nama</th><th>Alamat</th><th>Email</th><th>Dapil</th></tr></thead><tbody>\n\n";
	$f = fopen("register.csv", "r");
	while (($line = fgetcsv($f)) !== false) {
	    echo "<tr>";
	    foreach ($line as $cell) {
	        echo "<td>" . htmlspecialchars($cell) . "</td>";
	    }
	    echo "</tr>\n";
	}
	fclose($f);
	echo "\n</table></body></html>";
	?>
</body>
</html>
