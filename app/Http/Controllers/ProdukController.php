<?php

namespace App\Http\Controllers;

use App\Models\Produk;
use Illuminate\Http\Request;
class ProdukController extends Controller{
public function create(Request $request)
{
$kodeProduk = $request->input('kode_produk');
$namaProduk = $request->input('nama_produk');
$harga = $request->input('harga');
$produk = Produk::create([
    'kode_produk'=>$kodeProduk,
    'nama_produk'=>$namaProduk,
    'harga'=>$harga,
]);
return $this->responHasil(200, true, $produk);
}

public function list()
{

$produk = Produk::all();
return $this->responHasil(200, true, $produk);
}

public function show($id)
{

$produk =Produk::findOrFail($id);
return $this->responHasil(200, true, $produk);
}

public function update(Request $request,  $id)
{
$kodeProduk = $request ->input('kode_produk');
$namaProduk = $request->input('nama_produk');
$harga = $request->input('harga');

$produk=Produk::findOrFail($id);
$result=$produk->update([
    'kode_produk'=>$kodeProduk,
    'nama_produk'=>$namaProduk,
    'harga'=>$harga,
]);
return $this->responHasil(200, true, $result);
}
public function delete($id)
{

    $produk =Produk::findOrFail($id);
    $delete = $produk->delete();
return $this->responHasil(200, true, $delete);
}
}