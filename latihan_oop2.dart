// 1. Class Hewan dan Turunan Kucing
class Hewan {
  String nama;

  Hewan(this.nama);

  void suara() {
    print("$nama mengeluarkan suara.");
  }
}

class Kucing extends Hewan {
  String jenisBulu;

  Kucing(String nama, this.jenisBulu) : super(nama);

  @override
  void suara() {
    print("$nama mengeong: Meow Meow!");
  }
}

// 2. Encapsulation pada RekeningBank
class RekeningBank {
  double _saldo = 0;

  double get saldo => _saldo;

  void setor(double jumlah) {
    if (jumlah > 0) {
      _saldo += jumlah;
      print("Berhasil menyetor: $jumlah. Saldo saat ini adalah: $_saldo");
    }
  }

  void tarik(double jumlah) {
    if (jumlah > 0 && jumlah <= _saldo) {
      _saldo -= jumlah;
      print("Berhasil menarik: $jumlah. Saldo tersisa: $_saldo");
    } else {
      print("Saldo Anda mencukupi atau jumlahnya tidak valid.");
    }
  }
}

// 3. Polymorphism Bangun Datar
class BangunDatar {
  double hitungLuas() => 0;
}

class Persegi extends BangunDatar {
  double sisi;

  Persegi(this.sisi);

  @override
  double hitungLuas() => sisi * sisi;
}

class Segitiga extends BangunDatar {
  double alas, tinggi;

  Segitiga(this.alas, this.tinggi);

  @override
  double hitungLuas() => 0.5 * alas * tinggi;
}

// 4. Abstract Class Bentuk
abstract class Bentuk {
  double hitungLuas();
}

class Lingkaran extends Bentuk {
  double jariJari;

  Lingkaran(this.jariJari);

  @override
  double hitungLuas() => 3.14 * jariJari * jariJari;
}

void main() {
  // Hewan & Kucing
  var kucing = Kucing("Jino", "Anggora");
  kucing.suara();

  // RekeningBank
  var rekening = RekeningBank();
  rekening.setor(500000);
  rekening.tarik(200000);
  print("Saldo akhir Anda adalah: ${rekening.saldo}");

  // Bangun Datar
  var persegi = Persegi(4);
  var segitiga = Segitiga(3, 6);
  print("Luas Persegi adalah: ${persegi.hitungLuas()}");
  print("Luas Segitiga adalah: ${segitiga.hitungLuas()}");

  // Bentuk & Lingkaran
  var lingkaran = Lingkaran(7);
  print("Luas Lingkaran adalah: ${lingkaran.hitungLuas()}");
}
