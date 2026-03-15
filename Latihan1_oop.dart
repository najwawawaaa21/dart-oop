class Car {
  final String? merk;
  final String? model;
  final int? tahun;
  final int? harga;

  const Car({this.merk, this.model, this.tahun, this.harga});
}

class Mahasiswa {
  final String? name;
  final int? nim;

  const Mahasiswa({this.name, this.nim});
}

class Buku {
  String judul;
  String pengarang;

  // Parameterized constructor
  Buku(this.judul, this.pengarang);

  void cetakInformasi() {
    print('Buku: "$judul", Pengarang: $pengarang');
  }
}

class Segitiga {
  double alas;
  double tinggi;
  String jenis;

  // Named constructors berdasarkan jenis segitiga
  Segitiga.sikuSiku(this.alas, this.tinggi) : jenis = 'Siku-siku';
  Segitiga.samaSisi(this.alas, this.tinggi) : jenis = 'Sama Sisi';
  Segitiga.samaKaki(this.alas, this.tinggi) : jenis = 'Sama Kaki';

  void cetakInformasi() {
    print('Segitiga $jenis - Alas: $alas, Tinggi: $tinggi');
  }
}

class Warna {
  final int red;
  final int green;
  final int blue;

  // Constant constructor
  const Warna(this.red, this.green, this.blue);

  void cetakInformasi() {
    print('Warna (R: $red, G: $green, B: $blue)');
  }
}

void main() {
  print('--- Latihan 1: Soal 1 ---');
  const Car car =
      Car(merk: "Innova", model: "Venturer", tahun: 2022, harga: 390);
  print("Merk : ${car.merk}");
  print("Model: ${car.model}");
  print("Tahun: ${car.tahun}");
  print("Harga: ${car.harga}");
  print('');

  print('--- Latihan 1: Soal 2 ---');
  const Mahasiswa mahasiswa =
      Mahasiswa(name: "Najwa Khoirun Nisa", nim: 231240001449);
  print("Name: ${mahasiswa.name}");
  print("Nim: ${mahasiswa.nim}");
  print('');

  print('--- Latihan 1: Soal 3 ---');
  print('--- Objek Buku ---');
  Buku buku1 = Buku('Bumi Manusia', 'Pramoedya Ananta Toer');
  buku1.cetakInformasi();
  print('');

  print('--- Latihan 1: Soal 4 ---');
  print('--- Objek Segitiga ---');
  Segitiga segitiga1 = Segitiga.sikuSiku(4.0, 5.0);
  segitiga1.cetakInformasi();
  
  Segitiga segitiga2 = Segitiga.samaSisi(6.0, 5.2);
  segitiga2.cetakInformasi();
  print('');

  print('--- Latihan 1: Soal 5 ---');
  print('--- Objek Warna ---');
  const Warna warnaMerah = Warna(255, 0, 0);
  const Warna warnaBiru = Warna(0, 0, 255);
  warnaMerah.cetakInformasi();
  warnaBiru.cetakInformasi();
}
