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


 Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.

- [x] Menjalankan `flutter create counter_7` di terminal di folder yang sesuai.
- [x] Menambahkan FloatingActionButton baru dengan heroTag yang berbeda dengan button tambah dan icon Icons.remove untuk mengurangi counter. 
- [x] Menambahkan fungsi `_decrementCounter` untuk FloatingActionButton yang berfungsi mengurangi counter. 
- [x] Menambahkan kata 'GENAP' dan 'GANJIL' yang bisa berubah-ubah sesuai ganjil dan genapnya counter. 
- [x] Membuat conditional jika counter sudah mencapai 0, maka button akan di disabled
- [x] Membuat conditional jika counter sudah mencapai 0, maka button hilang (untuk bonus)

---
### Tugas 8
#### Nama: Inaya Rahmanisa 
#### NPM: 2106708330


##  Jelaskan perbedaan Navigator.push dan Navigator.pushReplacement.
`Navigator.pushReplacement` berfungsi untuk mengganti route dengan melakukan push route yang baru. `Navigator.push` melakukan push route untuk page yang baru tanpa melakukan penggantian dengan route sebelumnya


## Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.
- Row: Adalah widget layout yang berfungsi memposisikan child widget secara horizontal. Spacing di widget ini diatur dengan mainAxisAlignment (untuk horizontal) dan crossAxisAlignment (untuk vertikal)
- Column: Adalah widget layout yang berfungsi memposisikan child widget secara vertikal. Spacing di widget ini diatur dengan mainAxisAlignment (untuk vertikal) dan crossAxisAlignment (untuk horizontal)
- Container: Berfungsi sebagai parent widget yang dapat mengatur child widgets di dalamnya.
- Scaffold: Berfungsi untuk menyediakan framework untuk menambahkan komponen material seperti FloatingActionButton
- Padding: Berfungsi untuk memberikan space pada arah tertentu, bisa menggunakan EdgeInsets.only (untuk arah yang spesifik saja) atau EdgeInsets.all untuk semua arah
- Center: Adalah widget layout, berfungsi untuk memposisikan child widget di bagian tengah parent.
- Icon: Berlaku sebagai container berisi logo di proyek flutter. 
- Text: Menampilkan text di layar. Pada proyek ini dipakai untuk menampilkan kata 'GENAP', 'GANJIL', dan menampilkan counts di layar.
- FloatingActionButton: Adalah button berbentuk bundar yang dipakai untuk event primer di aplikasi.
- Card: Untuk menampilkan data dalam bentuk sheet tertentu. Digunakan pada details.dart
- ListTile: widget yang berisi 1 sampai 3 list widget lain.

##  Sebutkan jenis-jenis event yang ada pada Flutter (contoh: onPressed).
- onPressed, onTap, onChanged, onSaved, onHover

## Jelaskan bagaimana cara kerja Navigator dalam "mengganti" halaman dari aplikasi Flutter.
untuk melakukan pergantian halaman, dari halamanSatu ke halamanDua perlu dilakkukan `Navigator.push` atau method push lainnya yang bersesuaian misalnya pushReplacement. halamanDua dapat menerima parameter atau tidak sama sekali. Setelah dilakukan push, data dari halamanSatu diterima di halamanDua. Untuk melakukan pergantian dari halamanDua ke halamanSatu, dapat dilakukan `Navigator.pop` dan dapat mengembalikan data parameter untuk halamanSatu jika ada.


## Implementasi Checklist
- [x] Menambahkan drawer berisi ListTile di details.dart, main.dart, dan form.dart 
- [x] Menambahkan navigasi pada drawer untuk menuju page yang sesuai.
- [x] Menambahkan form.dart yang berisi 3 field data berupa text input dan dropdown button serta tombol submit.
- [x] Menghandle penyimpanan data dengan menyimpan variabel dari setiap field ke dalam map.
- [x] Menambahkan details.dart yang berfungsi menampilkan data dari field pada form.dart yang disimpan dalam mapping di dalam list `isiDetails`. List ini diinisiasi di form.dart dan diakses di details.dart
- [x] Menghandle kemunculan data di details.dart dengan membuat Cards untuk menampilkan setiap datanya dengan for loop.


---
### Tugas 9
#### Nama: Inaya Rahmanisa 
#### NPM: 2106708330


##  Apakah bisa kita melakukan pengambilan data JSON tanpa membuat model terlebih dahulu? 
Bisa. Raw data json dapat diproses dengan mengambilnya sebagai `Future<http.Response>` tanpa mengubahnya menjadi objek dart terlebih dahulu. Namun, hal tersebut tidak lebih baik daripada membuat model terlebih dahulu karena hasil dari method `jsonDecode` yang digunakan untuk mengubah json menjadi data bertipe dynamic sehingga perlu diparse menjadi tipe data lain secara satu-satu.


## Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.
- Row: Adalah widget layout yang berfungsi memposisikan child widget secara horizontal. Spacing di widget ini diatur dengan mainAxisAlignment (untuk horizontal) dan crossAxisAlignment (untuk vertikal)
- Column: Adalah widget layout yang berfungsi memposisikan child widget secara vertikal. Spacing di widget ini diatur dengan mainAxisAlignment (untuk vertikal) dan crossAxisAlignment (untuk horizontal)
- Container: Berfungsi sebagai parent widget yang dapat mengatur child widgets di dalamnya.
- Scaffold: Berfungsi untuk menyediakan framework untuk menambahkan komponen material seperti FloatingActionButton
- Padding: Berfungsi untuk memberikan space pada arah tertentu, bisa menggunakan EdgeInsets.only (untuk arah yang spesifik saja) atau EdgeInsets.all untuk semua arah
- Center: Adalah widget layout, berfungsi untuk memposisikan child widget di bagian tengah parent.
- Icon: Berlaku sebagai container berisi logo di proyek flutter. 
- Text: Menampilkan text di layar. Pada proyek ini dipakai untuk menampilkan kata 'GENAP', 'GANJIL', dan menampilkan counts di layar.
- FloatingActionButton: Adalah button berbentuk bundar yang dipakai untuk event primer di aplikasi.
- Card: Untuk menampilkan data dalam bentuk sheet tertentu. Digunakan pada details.dart
- ListTile: widget yang berfungsi menampilkan data dalam baris yang dibagi menjadi leading, trailing, dan center.
- Dialog: widget yang muncul di window untuk menampilkan informasi tertentu
- FutureBuilder: Widget yang merender dirinya sendiri berdasarkan update snapshot pada Future.
- AsyncSnapshot: representasi dari kegiatan asinkronus yang terakhir dijalankan
- Checkbox: widget box yang bernilai true ketika dicheck dan false ketika di-uncheck
- Drawer: widget yang berguna untuk melakukan navigasi ke halaman yang berbeda di aplikasi flutter
- BottomAppBar: adalah app bar yang terletak pada bawah aplikasi. Biasanya digunakan dengan menginisiasi `Scaffold.bottomNavigationBar` pada Scaffold
- ElevatedButton: Button yang ketika dihover dan diklik elevationnya bertambah
- RichText: widget text yang bisa menampilkan text dengan style yang berbeda-beda sekaligus

##  Mekanisme pengambilan data dari json hingga dapat ditampilkan pada Flutter.
1. Membuat model sesuai dengan data json yang akan di fetch
2. Melakukan `http.get` dari uri yang telah di parse
3. Memanggil method `jsonDecode` yang mengembalikan data dynamic dari hasil fetch json
4. Melakukan convert dari data dynamic tersebut ke data tipe yang sesuai dengan model yang sudah dibuat dan masukkkan hasilnya ke dalam suatu data tipe tertentu untuk dipanggil dan ditampilkan kemudian
5. Menggunakan widget `FutureBuilder<Objek>` pada body untuk menampilkan data hasil fetch json
6. Menambahkan properti `future` pada `FutureBuilder<Objek>` yang berisi proses fetch data dari step 1 sampai 4
7. Menambahkan properti `builder` pada `FutureBuilder<Objek>` yang menerima parameter BuildContext dan AsyncSnapshot dimaana objek AsyncSnapshot adalah data yang akan dipanggil berdasarkan index dari json dan ditampilkan pada app flutter


## Implementasi Checklist
- [x] Menambahkan navigasi drawer sehingga berisi ListTile untuk details.dart, main.dart, dan form.dart, dan mywatchlist_page.dart
- [x] Membuat model mywatchlist pada `lib/model/mywatchlist.dart` sesuai dengan field pada link json yang akan difetch
- [x] Membuat function fetch yang ada pada `fetch_watchlist.dart` untuk mengambil data dari url dan diconvert ke dalam objek `WatchlistItem` 
- [x] Menampilkan ListTile dari array yang berisi data json yang telah diconvert menjadi `WatchlistItem` di halaman mywatchlist_page
- [x] Menambahkan properti `onTap` yang menavigasi ke halaman details_watchlist yang berisi data watchlist secara detail.
- [x] Melakukan formatting data pada `details_watchlist.dart` agar sesuai dengan contoh dan menambahkan `ElevatedButton` pada `BottomAppBar` dari Scaffold `details_watchlist.dart`
- Menambahkan checkbox pada setiap ListTile watchlist dan status dari watched akan berubah sesuai dengan nilai checkbox, begitupula warna dari ListTile watchlist yang bersangkutan
- Menambahkan outline warna hijau jika telah ditonton dan kuning jika masih listed
- Memindahkan fungsi `fetchWatchlist()` ke dalam file `fetch_watchlist.dart`

