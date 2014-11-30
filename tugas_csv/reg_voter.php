<!DOCTYPE HTML>
<html>
	<head>
		<title>Pemilu Online</title>
		<link rel="stylesheet" href="styles.css">
		<script src="java.js"></script>
	</head>
	
	<body>
		<div id="content">
			<img id="banner" src="banner.jpg" />
			<!-- gambar banner -->
			<nav id="nav">	
				<ul>		
					<li>
						<a href="index.html"><span>Home</span></a>
					</li>
					<li>
						<a href="caleg.html"><span>Daftar Caleg</span></a>
					</li>
					<li>
						<a href="partai.html"><span>Daftar Partai</span></a>
					</li>
					<li>
						<a href="javascript:void(0);"><span></span></a>
					</li>
					<li>
						<a href="javascript:void(0);"><span></span></a>
					</li>
				</ul>
			</nav> 
			
			<nav id="menu">
				<!-- berisi login, dan menu admin -->
				<div class="login">
					<h4>Search</h4>
						<form name="log" method="get" action="" onsubmit="return validateForm();">
							<p><input type="text" name="username" size="16" value="" placeholder="Searching"></p>
							<p class="submit"><input type="submit" name="commit" value="Search"></p>
						</form>
				</div>
			</nav>
			<div id="main">
				<h2 class="isi">Registrasi Voter</h2>
				<!-- untuk judul halaman -->
				<article class="isi">
						<form name="daftar" method="post" action="csv.php">
							<table>
							<td>Nama Lengkap <td>: <input id="nama" type="text" name="nama" value="" placeholder="Username" required><tr>
							<td>Alamat <td>: <input id="alamat" type="text" name="alamat" value="" placeholder="Alamat" required><tr>
							<td>Email <td>: <input id="email" type="email" name="email" value="" placeholder="Email" required><tr>
							<td>Daerah Pemilihan <td>: <select name="Daerah">
														  <option value="">Select...</option>
														  <option value="Semarang Tengah">Semarang Tengah</option>
														  <option value="Semarang Selatan">Semarang Selatan</option>
														  <option value="Semarang Utara">Semarang Utara</option>
														  <option value="Semarang Timur">Semarang Timur</option>
														  <option value="Semarang Barat">Semarang Barat</option>
														</select><tr>
							<td><p class="submit"><input type="submit" name="Daftar" value="Daftar"> <button type="reset" class="cancel">Cancel</button></p><tr>
							</table>
						</form>
				</article>
				<!-- isi penjelasan halaman -->
			</div>
			<nav id="menu2">
				<!-- berisi login, dan menu admin -->
				<div class="login">
					<h4>Login</h4>
						<form name="log" method="post" action="cek.php" onsubmit="return validateForm();">
							<p><input type="text" name="username" size="16" value="" placeholder="Username"></p>
							<p><input type="password" name="password" size="16" value="" placeholder="Password"></p>
							<p class="submit"><input type="submit" name="commit" value="Login"></p>
						</form>
				</div>
				<div class="register">
					<h4>Register</h4>
						<a href="reg_caleg.html">Buat Akun Caleg</a>
						</br></br>
						<a href="reg_voter.html">Buat Akun Voter</a>
						</br></br>
				</div>
			</nav>
			<div class="clear"></div>
			<footer>TRACK RECORD LEGISLATIF</footer>
		</div>
	</body>
</html>