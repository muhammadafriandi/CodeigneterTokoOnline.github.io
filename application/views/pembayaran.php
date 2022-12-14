<div class="container-fluid">
	<div class="row">
		<div class="col-md-2"></div>
		<div class="col-md-8">
			<div class="btn btn-success">
				<?php 
					$grandtotal = 0;
					if ($keranjang = $this->cart->contents()) {
					 	foreach ($keranjang as $item){
					 		$grandtotal = $grandtotal + $item['subtotal'];
					 	}
					 	echo "Total Belanjaan Adalah : Rp.".number_format($grandtotal,0,',','.');
					 
				?>
			</div><br>
				<h3>Input Alamat Pengiriman</h3>

				<form method="post" action="<?php echo base_url('dashboard/proses_pesanan') ?> ">
					<div class="form-group">
						<label>Nama Lengkap</label>
						<input type="text" name="nama" placeholder="Nama Lengkap" class="form-control" required>
					</div>
					<div class="form-group">
						<label>Alamat Lengkap</label>
						<input type="text" name="alamat" placeholder="Alamat Lengkap" class="form-control" required>
					</div>
					<div class="form-group">
						<label>No Telepon</label>
						<input type="text" name="no_telp" placeholder="Nomor Telepon" class="form-control" required>
					</div>
					<div class="form-group">
						<label>Jasa Pengiriman</label>
						<select class="form-control" required>
							<option>Jne</option>
							<option>Tiki</option>
							<option>Pos Indonesia</option>
							<option>Gojek</option>
						</select>
					</div>
					<div class="form-group">
						<label>Pembayaran</label>
						<select class="form-control" required>
							<option>BCA - XXXXXXX</option>
							<option>BRI - XXXXXXX</option>
							<option>BNI - XXXXXXX</option>
							<option>MANDIRI - XXXXXXX</option>
						</select>
					</div>
					<button type="submit" class="btn btn-primary btn-sm">Pesan</button>
				</form>
			<?php }else{
				echo "Keranjang Belanja Masih Kosong";
			} ?>
		</div>
		<div class="col-md-2"></div>
	</div>
</div>