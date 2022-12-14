<div class="container-fluid">
	<h4>Keranjang Belanja</h4>

	<table class="table table-bordered table-striped table-hover">
		<tr class="text-white text-center" style="background-color:#28B463;">
			<th>No</th>
			<th>Nama Produk</th>
			<th>Jumlah</th>
			<th>Harga</th>
			<th>Sub-Total</th>
		</tr>

		<?php $no=1; foreach ($this->cart->contents() as $items): ?>

			<tr style="background-color:#EBDEF0;" align="center">
				<td><?php echo $no++; ?></td>
				<td><?php echo ucwords($items['name']) ?></td>
				<td><?php echo $items['qty'] ?></td>
				<td>Rp. <?php echo number_format($items['price'], 0,',','.') ?></td>
				<td>Rp. <?php echo number_format($items['subtotal'], 0,',','.') ?></td>
			</tr>
		<?php endforeach; ?>
			<tr>
				<td colspan="4">Total</td>
				<td class="text-center">Rp. <?php echo number_format($this->cart->total(), 0,',','.') ?></td>
			</tr>
	</table>

	<div align="right">
		<a href="<?php echo base_url('dashboard/hapus_keranjang') ?>" class="btn btn-danger btn-sm">Hapus</a>
		<a href="<?php echo base_url('dashboard/index') ?>" class="btn btn-primary btn-sm">Lanjut Belanja</a>
		<a href="<?php echo base_url('dashboard/pembayaran') ?>" class="btn btn-success btn-sm">Check Out</a>
	</div>

</div>