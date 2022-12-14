<?php

	class Data_barang extends CI_Controller{
		public function __construct(){
			parent::__construct();
			if ($this->session->userdata('role_id') != '1') {
				$this->session->set_flashdata('pesan','<div class="alert alert-danger alert-dismissible fade show" role="alert">
						  <strong>Silahkan Login !!
						</div>');
				redirect('auth/login');
			}
		}


		public function index(){
			$data['barang'] = $this->M_barang->tampil_data()->result();
			if ($this->input->post('cari')) {
				$data['barang']=$this->M_barang->cari_barang();
			}
			$this->load->view('templates_admin/header');
			$this->load->view('templates_admin/sidebar');
			$this->load->view('admin/data_barang',$data);
			$this->load->view('templates_admin/footer');

		}

		public function tambah_aksi(){
			$nama_brg  	= $this->input->post('nama_brg');	
			$keterangan = $this->input->post('keterangan');
			$kategori  	= $this->input->post('kategori');
			$harga  	= $this->input->post('harga');
			$stok  		= $this->input->post('stok');
			$gambar = $_FILES['gambar']['name'];

			if ($gambar =''){

			}else{
				$config ['upload_path'] = './upload/produk';
				$config ['allowed_types'] = 'jpg|png|jpeg|gif' ;

				$this->load->library('upload', $config);
				if (!$this->upload->do_upload('gambar')) {
				 	echo "Gambar Gagal Di Upload !!";
				 }else{
				 	$gambar = $this->upload->data('file_name');
				 } 
			}
			$data = array(
				'nama_brg' => $nama_brg,
				'keterangan' => $keterangan,
				'kategori' => $kategori,
				'harga'  => $harga,
				'stok' => $stok,
				'gambar' => $gambar
			);

			$this->M_barang->tambah_barang($data,'tb_barang');
			redirect('admin/data_barang/index');
		}

		public function edit($id){
			$where = array('id_brg' =>$id);
			$data['barang'] = $this->M_barang->edit_barang($where,'tb_barang')->result();
			$this->load->view('templates_admin/header');
			$this->load->view('templates_admin/sidebar');
			$this->load->view('admin/edit_barang',$data);
			$this->load->view('templates_admin/footer');
		}

		public function update(){
			$id  		= $this->input->post('id_brg');
			$nama_brg  	= $this->input->post('nama_brg');
			$keterangan = $this->input->post('keterangan');
			$kategori  	= $this->input->post('kategori');
			$harga  	= $this->input->post('harga');
			$stok  		= $this->input->post('stok');

			$data = array(
				'nama_brg'   => $nama_brg,
				'keterangan' => $keterangan,
				'kategori'   => $kategori,
				'harga'  	 => $harga,
				'stok'  	 => $stok
			);

			$where = array(
				'id_brg'  =>$id
			);

			$this->M_barang->update_data($where,$data, 'tb_barang');
			redirect('admin/data_barang/index');
		}

		public function hapus($id){
			$where = array('id_brg' =>$id);
			$this->M_barang->hapus_data($where,'tb_barang');
			redirect('admin/data_barang/index');
		}

		 public function detail($id_brg){
      		$data['barang'] = $this->M_barang->detail_brg($id_brg);
             $this->load->view('templates/header');
             $this->load->view('templates/sidebar');
             $this->load->view('admin/detail_barang',$data);
             $this->load->view('templates/footer');
 			}
	

	}