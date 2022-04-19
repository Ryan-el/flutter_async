// import "dart:io";

// void main() {
//   for (int i = 1; i <= 5; i++) {
//     for (int j = 1; j <= i; j++) {
//       stdout.write("*");
//     }
//     stdout.write("\n");
//   }

//   //tipe data dan variable
//   //var
//   var mahasiswa = "ryan";
//   var umur = 20;
//   print(mahasiswa + " Umur = " + umur.toString());

//   //string
//   String mahasiswastring;
//   mahasiswastring = "ucup";
//   print(mahasiswastring);

//   //int
//   int semester;
//   semester = 6;
//   print(semester);

//   //double
//   double ipk;
//   ipk = 3.5;

//   //boolean
//   bool benar = true;
//   bool salah = false;
//   bool tidakbenar = !true;
//   bool tidaksalah = !true;

//   //list
//   List jurusan = ["TI", "SI", "DKV", semester.toString(), ipk.toString()];
//   print(jurusan);

//   //maping
//   Map<String, dynamic> kelas = {"nama": "ari", "kelas": "TI 2"};
//   print(kelas);
//   print(kelas['nama']);
//   print(kelas['kelas']);

//   //OPERATOR

//   int a, b;
//   a = 9;
//   b = 3;
//   print(' a = ' + a.toString());
//   print(' b = ' + b.toString());

//   print(a + b);
//   print(a - b);
//   print(a * b);
//   print(a / b);
//   print(a > b);
//   print(a < b);
//   print(a >= b);
//   print(a <= b);

//   void main() {
//     //conditional
//     print('Conditional');
//     var nilai;
//     nilai = 80;

//     if (nilai >= 80) {
//       print('A');
//     } else if (nilai < 80 && nilai >= 50) {
//       print('B');
//     } else {
//       print('Tidak Lulus');
//     }

//     print("-----------");
//     nilai >= 80 ? print('A') : print('tidak A');

// //function
//     print('function');
//     hitungNilai();
//     hitungNilai1(75, 100);
//     var p = hitungNilai1(100, 4, 70);
//     print(p);
//     var q = hitungNilai2(mapel1: 50, mapel2: 10);
//     print(q);
//     hitungNilai3(100, 50);

//     void main() {
// //final keyword => imutable / tidak bisa dirubah
// //const final
//       //const

//       //const String mahasiswa = "Aji";
//       //print(mahasiswa);

//       //final
//       final String mahasiswafk;
//       mahasiswafk = "Edi";
//       print(mahasiswafk);
//       //null safety
//       // ? ! late
//       // ? digunakan boleh null
//       //String? jurusan;
//       // late sama seperti final namun dapat di replace dan untuk di isi nanti
//       late String jurusanns;

//       jurusanns = "Teknik Informatika";
//       //jurusan = "TI";

//       // "!" memaksa untuk di jalankan / yakin ada datanya
//       print(jurusanns.length);
//       //looping
//       //for plus
//       for (int no = 1; no <= 5; no++) {
//         print(no);
//       }
//       //for minus
//       for (int no = 5; no >= 1; no--) {
//         print(no);
//       }
//       //while
//       int no1 = 1;
//       int no2 = 5;
//       while (no1 <= no2) {
//         print(no1);
//         no1++;
//       }
//       //do while
//       int no3 = 1;
//       int no4 = 5;

//       do {
//         print(no3);
//         no3++;
//       } while (no3 <= no4);
//     }
//   }
// }

// //function
// hitungNilai() {
//   print('hitung nilai');
// }

// //Positional argument
// hitungNilai1(mapel1, mapel2, [mapel3]) {
//   var nilaiAkhir;
//   if (mapel3 != null) {
//     nilaiAkhir = mapel1 / mapel2 + mapel3;
//     return nilaiAkhir;
//   } else {
//     nilaiAkhir = mapel1 / mapel2;
//   }

//   return nilaiAkhir;
// }

// //name argument
// hitungNilai2({mapel1, mapel2}) {
//   var nilaiAkhir;
//   if (mapel2 != null) {
//     nilaiAkhir = mapel1 / mapel2;
//     return nilaiAkhir;
//   } else {
//     nilaiAkhir = mapel1;
//   }

//   return nilaiAkhir;
// }

// //void
// void hitungNilai3(mapel1, mapel2) {
//   var nilaiAkhir = mapel1 + mapel2;
//   print(nilaiAkhir);
// }
//oop
//class

class Kendaraan {
  String? merk;
  String? nama;
  int? kecepatan;

  //construct
  Kendaraan({this.merk, this.nama, this.kecepatan});
  //method
  maju(int tambahKecepatan) {
    kecepatan = kecepatan! + tambahKecepatan;
    //print(kecepatan + tambahKecepatan);
  }
}

//inheritance / pewarisan
class Sedan extends Kendaraan {
  int? jumlahPintu;
  int? kecepatanMaximal;

  Sedan({String? merk, this.jumlahPintu, this.kecepatanMaximal})
      : super(merk: merk);
}

void main() {
  //instansiasi
  var k1 = Kendaraan(merk: "BMW", nama: "civic", kecepatan: 20);
  k1.merk = "Toyota";
  //print(k1.maju(40));
  print(k1.merk);
  print(k1.nama);
  print(k1.kecepatan);

  var k2 = Kendaraan(merk: "Mitsubishi", nama: "colt", kecepatan: 40);
  k2.maju(80);
  //print(kecepatan);
  print(k2.merk);
  print(k2.nama);
  print(k2.kecepatan);

  var s1 = Sedan(jumlahPintu: 4, kecepatanMaximal: 120, merk: "Honda");
  print("----------");
  print(s1.jumlahPintu);
  print(s1.kecepatanMaximal);
  print(s1.merk);
}
