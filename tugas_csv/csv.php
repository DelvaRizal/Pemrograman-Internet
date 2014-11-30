<!DOCTYPE html>
<?php
	if ($_SERVER['REQUEST_METHOD'] == 'POST')
	{
		if (isset($_POST['Daftar']))
		{
			if($_POST['Daftar']){
				$content = $_POST['nama'];
				$content .= ",";
				$content .= $_POST['alamat'];
				$content .= ",";
				$content .= $_POST['email'];
				$content .= ",";
				$content .= $_POST['Daerah'];

				$filename = 'register.csv';
				$fp = fopen( $filename, 'w' );
				fwrite( $fp, $content );
				fclose( $fp );?>
				<script language="JavaScript">alert('Simpan Sukses!!');
					document.location='tabel.php'</script><?php
			}
		}
	}
?>
<html>
<head>
	<title></title>
</head>
<body>

</body>
</html>