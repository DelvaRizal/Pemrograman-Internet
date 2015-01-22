<?php
	//jk mencari berdasarkan partai
	if(isset($_GET['partai'])){
		try{
			$sql = 'SELECT * FROM caleg where partai=:partai';
				$query = $db->prepare($sql);
				$query->execute(array(
					'partai' => $_GET['partai']
				));
			$res = $query->fetch();	
		} catch (PDOException $e) {
			echo $e->getMessage();
		}
		
		if($res != null){
			$sql = 'SELECT * FROM caleg where partai = "'.$_GET['partai'].'"'; 
			$res = $db->query($sql); 
		}
	//berdasarkan search
	}else if(isset($_GET['act'])){
		try{
			$sql = 'SELECT * FROM caleg where nama_lengkap like "%":nama"%" OR partai like "%":nama"%" OR dapil like "%":nama"%" OR visi like "%":nama"%"';
				$query = $db->prepare($sql);
				$query->execute(array(
					'nama' => $_POST['kunci']
				));
			$res = $query->fetch();	
		} catch (PDOException $e) {
			echo $e->getMessage();
		}
		
		if($res != null){
			$sql = 'SELECT * FROM caleg where nama_lengkap like "%'.$_POST['kunci'].'%" OR partai like "%'.$_POST['kunci'].'%" OR dapil like "%'.$_POST['kunci'].'%" OR visi like "%'.$_POST['kunci'].'%"'; 
			$res = $db->query($sql); 
		}
	//lgsg klik caleg
	}else{
		try{
			$sql = 'SELECT * FROM caleg'; 
			$res = $db->query($sql); 
		} catch (PDOException $e) {
			echo $e->getMessage();
		}
	}
?>
				<h2 class="isi">Daftar Caleg</h2>
				<!-- untuk judul halaman -->
				<article class="isi">
				<?php
					if($res != null){
						echo '<table>';
							//menampilkan daftar caleg
							$No = 1;
							foreach($res as $data){
								echo '<td width = "100"><a href="?page=profil_caleg&caleg='.$data['username'].'"><img src="'.$data['foto'].'" /></a><br />Nama : '.$data['nama_lengkap'].' <br /> Partai : '.$data['partai'].' <br /> Dapil : '.$data['dapil'].'<td>';
								if($No%3 == 0){
									echo '<tr>';
								}
								$No++;
							}
							
							//<td width = "100"><a href="?page=profil_caleg"><img src="image.jpg" /></a><br />Nama : Deny Septianto <br /> Partai : Golkar<td>
							//<td width = "100"><a href="?page=profil_caleg"><img src="image1.jpg" /></a><br />Nama : Deny Septianto <br /> Partai : Golkar<td>
							//<td width = "100"><a href="?page=profil_caleg"><img src="image2.jpg" /></a><br />Nama : Deny Septianto <br /> Partai : Golkar<td><tr>
							//<td width = "100"><a href="?page=profil_caleg"><img src="image3.jpg" /></a><br />Nama : Deny Septianto <br /> Partai : Golkar<td>
							//<td width = "100"><a href="?page=profil_caleg"><img src="image4.jpg" /></a><br />Nama : Deny Septianto <br /> Partai : Golkar<td>
							//<td width = "100"><a href="?page=profil_caleg"><img src="image5.jpg" /></a><br />Nama : Deny Septianto <br /> Partai : Golkar<td><tr>
						echo '</table>';
					//jika mencari lewat search
					}else if(isset($_GET['act'])){
						echo '<p align="center">Pencarian Tidak Ditemukan</p>';
					//jk mencari lewat partai
					}else{
						echo '<p align="center">Tidak terdapat caleg partai '.$_GET['partai'].'</p>';
					}?>
				</article>
				<!-- isi penjelasan halaman -->