<?php

class Buku_tamu_model extends CI_Model{
    function insert_data($nama, $alamat, $email, $kehadiran, $tanggal){
        $query = $this->db->query("
            insert into buku_tamu (nama, alamat, email, kehadiran) values ('$nama','$alamat','$email','$kehadiran')
        ");
        return $query;
    }
}