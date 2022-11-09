### Tugas 7
#### Nama: Inaya Rahmanisa 
#### NPM: 2106708330


## Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget dan jelaskan perbedaan dari keduanya.

Stateless widget adalah widgets yang tidak bisa berubah-ubah dan tidak akan diubah statenya ketika runtime. Stateful widget adalah widget yang dapat diubah statenya ketika runtime. Contoh stateless widget adalah Icon dan Text, sedangkan stateful widget contohnya Checkbox, Radio, dan Slider. Karena stateful widget dapat diubah, maka di ada fungsi setState() yang akan mengubah data atau input data yang setiap perubahannya akan dilakukan render ulang.   

## Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.

### Invisible widget
- Row: Adalah widget layout yang berfungsi memposisikan child widget secara horizontal. Spacing di widget ini diatur dengan mainAxisAlignment (untuk horizontal) dan crossAxisAlignment (untuk vertikal)
- Column: Adalah widget layout yang berfungsi memposisikan child widget secara vertikal. Spacing di widget ini diatur dengan mainAxisAlignment (untuk vertikal) dan crossAxisAlignment (untuk horizontal)
- Container: Berfungsi sebagai parent widget yang dapat mengatur child widgets di dalamnya.
- Scaffold: Berfungsi untuk menyediakan framework untuk menambahkan komponen material seperti FloatingActionButton
- Padding: Berfungsi untuk memberikan space pada arah tertentu, bisa menggunakan EdgeInsets.only (untuk arah yang spesifik saja) atau EdgeInsets.all untuk semua arah
- Center: Adalah widget layout, berfungsi untuk memposisikan child widget di bagian tengah parent.


### Visible widgets
- Icon: Berlaku sebagai container berisi logo di proyek flutter. 
- Text: Menampilkan text di layar. Pada proyek ini dipakai untuk menampilkan kata 'GENAP', 'GANJIL', dan menampilkan counts di layar.
- FloatingActionButton: Adalah button berbentuk bundar yang dipakai untuk event primer di aplikasi.

## Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.

setState() adalah fungsi yang ada pada StatefulWidgets. setState() berfungsi untuk menginformasikan state internal dari suatu objek telah berubah. Dari informasi tersebut kemudian perlu dilakukan build atau render ulang. 

## Jelaskan perbedaan antara const dengan final.

const dalam variabel digunakan jika valuenya diketahui saat compile time (sebelum di run). Jika value tidak ada/diketahui sebelum compile time, variabel bersifat final daripada const. Contoh yang merupakan final tapi tidak bisa const adalah `DateTime.now`, datanya hanya diketahui saat runtime sehingga tidak bisa menggunakan const. const tidak bisa diubah saat runtime, sedangkan internal final bisa diubah namun objeknya tidak dapat diubah.


## Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.

- [x] Menjalankan `flutter create counter_7` di terminal di folder yang sesuai.
- [x] Menambahkan FloatingActionButton baru dengan heroTag yang berbeda dengan button tambah dan icon Icons.remove untuk mengurangi counter. 
- [x] Menambahkan fungsi `_decrementCounter` untuk FloatingActionButton yang berfungsi mengurangi counter. 
- [x] Menambahkan kata 'GENAP' dan 'GANJIL' yang bisa berubah-ubah sesuai ganjil dan genapnya counter. 
- [x] Membuat conditional jika counter sudah mencapai 0, maka button akan di disabled
- [x] Membuat conditional jika counter sudah mencapai 0, maka button hilang (untuk bonus)