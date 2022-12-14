<div class="container-fluid">
	<h4>Detail Pesanan <div class="btn btn-success btn-sm">Id Pesanan : <?php echo $invoice->id ?> </div></h4>

	<table class="table table-bordered table-striped mb-3">
		<tr>
			<th>No</th>
			<th>Nama Produk</th>
			<th>Jumlah Pesanan</th>
			<th>Harga Satuan</th>
			<th>Subtotal</th>
		</tr>

		<?php 
		$no=1; 
		$total=0;
		foreach ($pesanan as $psn):
			$subtotal = $psn->jumlah * $psn->harga;
			$total += $subtotal;
		?>		

		<tr>
			<td><?php echo $no++ ?></td>
			<td><?php echo $psn->nama_brg ?></td>
			<td><?php echo $psn->jumlah ?></td>
			<td>Rp. <?php echo number_format($psn->harga, 0,',','.') ?></td>
			<td>Rp. <?php echo number_format($subtotal, 0,',','.') ?></td>
		</tr>

	<?php endforeach; ?>

		<tr>
			<td colspan="4">Grand Total</td>
			<td>Rp. <?php echo number_format($total) ?></td>
		</tr>
	</table>
	<a class="btn btn-info btn-sm"  href="<?php echo base_url('admin/Invoice') ?>">Kembali</a>

</div>