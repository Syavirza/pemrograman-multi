// Program Penentu Kelulusan Mahasiswa
// Tugas Pertemuan 2 - Pemrograman Multi Platform

import 'dart:io';

void main() {
  print('========================================');
  print('   PROGRAM CEK KELULUSAN MAHASISWA');
  print('========================================');
  print('');
  
  // Input dari user
  stdout.write('Masukkan Nama Mahasiswa: ');
  String nama = stdin.readLineSync() ?? '';
  
  stdout.write('Masukkan Nilai: ');
  int nilai = int.tryParse(stdin.readLineSync() ?? '0') ?? 0;
  
  print('');
  print('----------------------------------------');
  
  // Memanggil fungsi cekKelulusan
  cekKelulusan(nama, nilai);
  
  print('========================================');
}

// Fungsi cekKelulusan dengan parameter nama dan nilai
void cekKelulusan(String nama, int nilai) {
  // Percabangan if untuk menentukan status kelulusan
  if (nilai >= 75) {
    print('✅ STATUS: LULUS');
    print('   $nama dinyatakan LULUS dengan nilai $nilai');
    print('   (Nilai >= 75)');
  } else if (nilai <= 74) {
    print('❌ STATUS: TIDAK LULUS');
    print('   $nama dinyatakan TIDAK LULUS dengan nilai $nilai');
    print('   (Nilai <= 74)');
  }
}