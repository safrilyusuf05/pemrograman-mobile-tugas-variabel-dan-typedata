import 'dart:io';

void main() {
  stdout.write("Nama karyawan: ");
  String nama = stdin.readLineSync()!;

  stdout.write("Jumlah Jam Kerja: ");
  int jamKerja = int.parse(stdin.readLineSync()!);

  stdout.write("Upah Per Jam: ");
  double upahPerJam = double.parse(stdin.readLineSync()!);

  stdout.write("Apakah karyawan tetap? (y/n): ");
  String statusInput = stdin.readLineSync()!.toLowerCase();

  bool statusTetap = (statusInput.startsWith("y")) ? true : false;

  var karyawan = {
    "nama": nama,
    "jamKerja": jamKerja,
    "upahPerJam": upahPerJam,
    "statusTetap": statusTetap
  };

  double gajiKotor = jamKerja * upahPerJam;
  double pajak = statusTetap ? gajiKotor * 0.10 : gajiKotor * 0.05;
  double gajiBersih = gajiKotor - pajak;

  karyawan.addAll({
    "gajiKotor": gajiKotor,
    "pajak": pajak,
    "gajiBersih": gajiBersih,
  });

  print("\n===== Data Gaji Karyawan =====");
  print("Nama Karyawan : ${karyawan["nama"]}");
  print("Status        : ${statusTetap ? "Tetap" : "Kontrak"}");
  print("Gaji Kotor    : Rp ${gajiKotor.toStringAsFixed(2)}");
  print("Pajak         : Rp ${pajak.toStringAsFixed(2)}");
  print("Gaji Bersih   : Rp ${gajiBersih.toStringAsFixed(2)}");
}
