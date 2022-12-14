<div class="container-fluid">
  <div id="carouselExampleSlidesOnly" class="carousel slide" data-ride="carousel">
  <div class="carousel-inner mb-4">
    <div class="carousel-item active">
        <img src="<?php echo base_url('assets/img/slider1.png') ?>" style="height:40vh" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="<?php echo base_url('assets/img/slider2.jpg') ?>" style="height:40vh;" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="<?php echo base_url('assets/img/slider2.jpg') ?>" style="height:40vh;" class="d-block w-100" alt="...">
    </div>
  </div>
</div>



   <div class="row text-center">
      <?php foreach ($pakaian_wanita as $brg): ?>
          <div class="card ml-3 mb-4" style="width: 15rem;">
            <img src="<?php echo base_url().'/upload/produk/'.$brg->gambar ?>" class="card-img-top" alt="...">
              <div class="card-body">
                <h5 class="card-title mb-1"><?php echo ucwords($brg->nama_brg); ?></h5>
                <small><?php echo $brg->keterangan ?></small><br>
                <span class="badge badge-success mb-2">Rp.<?php echo number_format($brg->harga, 0,',','.') ?></span><br>
                <?php echo anchor('dashboard/tambah_ke_keranjang/'.$brg->id_brg,'<div class=  "btn btn-sm btn-primary">Tambah keranjang</div>') ?>
                <?php echo anchor('dashboard/detail/'.$brg->id_brg,'<div class=  "btn btn-sm btn-success">Detail</div>') ?>
             </div>
          </div>
        <?php endforeach; ?>
   </div>
</div>