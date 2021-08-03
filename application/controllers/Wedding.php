<?php

class Wedding extends CI_Controller{
    function __construct(){
        parent::__construct();
        $this->load->model(array('buku_tamu_model'));
    }

    function index(){
        $this->load->view('wedding');
    }

    function validasi(){
        $this->load->library('form_validation');
        $this->form_validation->set_rules('nama', 'Nama', 'required|alpha_numeric_spaces|max_length[50]');
		$this->form_validation->set_rules('alamat', 'Alamat', 'required');
		$this->form_validation->set_rules('email', 'Email', 'required');
		$this->form_validation->set_rules('Kehadiran', 'Kehadiran', 'required');
    }

    function konfirmasi_kehadiran(){
        header('Content-type:application/json');
        $this->validasi();
        $nama = $this->input->post('nama');
        $alamat = $this->input->post('alamat');
        $email = $this->input->post('email');
        $kehadiran = $this->input->post('kehadiran');

        $tanggal = date('Y-m-d H:i:s');
        if( $this->form_validation->run() === FALSE ){
            $data['status'] = false;
			$data['errors'] = [
				'nama_error' 	    => form_error('nama'),
				'alamat_error' 	    => form_error('alamat'),
				'email_error' 	    => form_error('email'),
				'kehadiran_error'   => form_error('kehadiran'),
			];
        }else{
            $insert = $this->buku_tamu_model->insert_data($nama, $alamat, $email, $kehadiran, $tanggal);

            if($insert){
                $status = '200';
                if($kehadiran == 'Y'){
                    $ket    = 'Anda telah mengirimkan persetujuan kehadiran';
                }else{
                    $ket    = 'Anda telah menolak persetujuan kehadiran';
                }
            }else{
                $status = '400';
                $ket    = 'Gagal Mengirim Data';
            }
    
            $data = array(
                'success'          => $status,
                'ket'              => $ket
            );
        }
        

        echo json_encode($data);

        
    }
}