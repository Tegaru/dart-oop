//Latihan Nomor 1
class Mobil {
  String merk;
  String model;
  int tahun;

  Mobil(this.merk, this.model, this.tahun);

  void info() {
    print("Mobil: $merk $model, Tahun: $tahun");
  }
}

//Latihan Nomor 2
class Mahasiswa {
  String nama;
  String nim;

  Mahasiswa({this.nama = "Tegar Miftaqur Rohim", this.nim = "221240001251"});

  void info() {
    print("Mahasiswa: $nama, NIM: $nim");
  }
}

//Latihan Nomor 3
class Buku {
  String judul;
  String pengarang;

  Buku(this.judul, this.pengarang);

  void info() {
    print("Buku: $judul oleh $pengarang");
  }
}

//Latihan Nomor 4
class Segitiga {
  double alas;
  double tinggi;
  String jenis;

  Segitiga(this.alas, this.tinggi, this.jenis);

  Segitiga.named({required this.jenis}) : alas = 0, tinggi = 0;

  void info() {
    print("Segitiga: $jenis, Alas: $alas, Tinggi: $tinggi");
  }
}

//Latihan Nomor 5
class Warna {
  final int red;
  final int green;
  final int blue;

  const Warna(this.red, this.green, this.blue);

  void info() {
    print("Warna - Merah: $red, Hijau: $green, Biru: $blue");
  }
}

void main() {
  var mobil = Mobil("Daihatsu", "Xenia", 2025);
  mobil.info();

  var mahasiswa = Mahasiswa();
  mahasiswa.info();

  var buku = Buku("Belajar Dart", "Tegar Miftaqur Rohim");
  buku.info();

  var segitiga = Segitiga.named(jenis: "Siku-siku");
  segitiga.info();

  var warna1 = const Warna(255, 0, 0);
  var warna2 = const Warna(0, 255, 0);
  var warna3 = const Warna(0, 0, 255);

  warna1.info();
  warna2.info();
  warna3.info();
}
