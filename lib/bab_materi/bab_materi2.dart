import 'package:flutter/material.dart';

class Bab2 extends StatelessWidget {
  const Bab2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: <Widget>[
        SliverPersistentHeader(
          delegate: MainJudul2(maxHeight: 200, minHeight: 180),
          pinned: true,
          floating: true,
        ),
        const TextMain2(),
        SliverPersistentHeader(
          delegate: JudulMateriA2(maxHeight: 60, minHeight: 60),
          pinned: true,
          floating: false,
        ),
        const TextA2(),
        SliverPersistentHeader(
          delegate: JudulMateriB2(maxHeight: 60, minHeight: 60),
          pinned: true,
          floating: false,
        ),
        const TextB2(),
      ],
    ));
  }
}

class MainJudul2 extends SliverPersistentHeaderDelegate {
  MainJudul2({required this.maxHeight, required this.minHeight});
  final double maxHeight;
  final double minHeight;
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Container(
          padding: const EdgeInsets.only(left: 10, bottom: 10, right: 10),
          color: Colors.purple,
        ),
        Container(
          padding: const EdgeInsets.only(left: 10),
          alignment: Alignment.centerLeft,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                'BAB II',
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              Text(
                'Perangkat Peripheral',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.only(right: 10, top: 10),
          alignment: Alignment.topRight,
          child: IconButton(
            icon: const Icon(
              Icons.close,
              size: 35,
            ),
            color: Colors.black,
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
      ],
    );
  }

  @override
  double get maxExtent => maxHeight;

  @override
  double get minExtent => minHeight;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>
      false;
}

class JudulMateriA2 extends SliverPersistentHeaderDelegate {
  JudulMateriA2({required this.maxHeight, required this.minHeight});
  final double maxHeight;
  final double minHeight;
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Stack(fit: StackFit.expand, children: [
      Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        color: Colors.white,
        child: const Expanded(
          child: Center(
            child: Text(
              'Tingkatan Peripheral',
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple),
            ),
          ),
        ),
      ),
    ]);
  }

  @override
  double get maxExtent => maxHeight;

  @override
  double get minExtent => minHeight;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>
      false;
}

class JudulMateriB2 extends SliverPersistentHeaderDelegate {
  JudulMateriB2({required this.maxHeight, required this.minHeight});
  final double maxHeight;
  final double minHeight;
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Stack(fit: StackFit.expand, children: [
      Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        color: Colors.purple,
        child: const Expanded(
          child: Center(
            child: Text(
              'Macam-macam Peripheral',
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
        ),
      ),
    ]);
  }

  @override
  double get maxExtent => maxHeight;

  @override
  double get minExtent => minHeight;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>
      false;
}

class TextMain2 extends StatelessWidget {
  const TextMain2({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
          padding: const EdgeInsets.all(10),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 10),
                  child: const Expanded(
                    child: Text(
                      'Perangkat Eksternal Peripheral',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 10),
                  child: const Text(
                    '     Pembahasan di bab selanjutnya adalah tentang perangkat eksternal atau peripheral. Apa itu perangkat Peripheral ? Perangkat Eksternal atau Peripheral adalah hardware tambahan yang disambungkan ke komputer, biasanya dengan bantuan kabel ataupun sekarang sudah banyak perangkat peripheral wireless.',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 10),
                  child: const Text(
                    '     Peripheral ini bertugas membantu komputer menyelesaikan tugas yang tidak dapat dilakukan oleh hardware yang sudah terpasang didalam casing.',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                )
              ])),
    );
  }
}

class TextA2 extends StatelessWidget {
  const TextA2({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
          padding: const EdgeInsets.all(10),
          child: Column(children: [
            Container(
              margin: const EdgeInsets.only(bottom: 10),
              child: const Text(
                '     Adapun pembagian-pembagian tingkatan peripheral yaitu :',
                style: TextStyle(fontSize: 20, color: Colors.black),
                textAlign: TextAlign.justify,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 10),
              child: const Text(
                '1. Peripheral Utama\nPeripheral utama adalah perangkat yang harus ada di setiap pengoperasian perangkat komputer. Apa saja perangkat itu? Perangkat itu adalah monitor, keyboard dan mouse.',
                style: TextStyle(fontSize: 20, color: Colors.black),
                textAlign: TextAlign.justify,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 10),
              child: const Text(
                '2. Peripheral pendukung (auxillary peripheral)\nYaitu peralatan yang tidak harus ada di pengoprasian perangkat komputer tetapi di butuhkan dalam kondisi tertentu. Perangkat tersebut adalah printer, scanner, modem, web cam dan lainnya. Perangkat eksternal atau lebih umum disebut peripheral tersambung dalam sistem CPU melalui perangat pengendalinya, yaitu modul I/O. Secara umum perangkat eksternal diklasifikasikan menjadi 3 katagori : ',
                style: TextStyle(fontSize: 20, color: Colors.black),
                textAlign: TextAlign.justify,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 10),
              child: const Text(
                'a) Human Readable, yaitu perangkat yang berhubungan dengan manusia sebagai pengguna komputer. Contohnya: monitor, keyboard, mouse, printer, joystick, disk drive.',
                style: TextStyle(fontSize: 20, color: Colors.black),
                textAlign: TextAlign.justify,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 10),
              child: const Text(
                'b) Machine readable, yaitu perangkat yang berhubungan dengan peralatan. Biasanya berupa modul sensor dan tranduser untuk monitoring dan kontrol suatu peralatan atau sistem.',
                style: TextStyle(fontSize: 20, color: Colors.black),
                textAlign: TextAlign.justify,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 10),
              child: const Text(
                'c) Communication, yatu perangkat yang berhubungan dengan komunikasi jarak jauh. Misalnya: NIC dan modem. Pengklasifikasian juga bisa berdasarkan arah datanya, yaitu perangkat output, perangkat input dan kombinasi output-input. Contoh perangkat output: monitor, proyektor dan printer. Perangkat input misalnya: keyboard, mouse, joystick, scanner, mark reader, bar code reader.',
                style: TextStyle(fontSize: 20, color: Colors.black),
                textAlign: TextAlign.justify,
              ),
            ),
          ])),
    );
  }
}

class TextB2 extends StatelessWidget {
  const TextB2({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
          padding: const EdgeInsets.all(10),
          child: Column(children: [
            Container(
              margin: const EdgeInsets.only(bottom: 10),
              child: const Text(
                '     Perangkat eksternal/ peripheral ini terdapat beberapa jenis-jenis perangkat yaitu :',
                style: TextStyle(fontSize: 20, color: Colors.black),
                textAlign: TextAlign.justify,
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              margin: const EdgeInsets.symmetric(vertical: 15),
              child: const Text(
                '1. PERIPHERAL INPUT',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 10),
              child: const Text(
                'Peripheral input (perangkat input) adalah perangkat yang digunakan untuk memasukkan data atau perintah kedalam komputer. Contoh alat masukkan:',
                style: TextStyle(fontSize: 20, color: Colors.black),
                textAlign: TextAlign.justify,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 10),
              child: const Text(
                'a) Keyboard (Papan Tombol) adalah alat masukkan melalui proses pengetikkan lewat penekanan tombol yang ada di keyboard. Keyboard terdiri atas tombol pengetikan, angka, fungsi, dan tombol kontrol. Keyboard dihubungkan dengan komputer menggunakan sebuah kabel atau tanpa kabel (menggunakan sinar infra merah).',
                style: TextStyle(fontSize: 20, color: Colors.black),
                textAlign: TextAlign.justify,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 10),
              child: const Text(
                'b) Mouse adalah pointing device yang digunakan untuk mengatur posisi cursor di layar dengan cara menggerakkan atau menggesernya. Sebagian besar mouse memiliki tiga tombol yaitu tombol kiri, tengah dan kanan. Penekanan tombol mouse disebut click, sedangkan pergerakan penunjuk mouse disebut drag.',
                style: TextStyle(fontSize: 20, color: Colors.black),
                textAlign: TextAlign.justify,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 10),
              child: const Text(
                'c) Touchscreen/ Layar sentuh adalah layar monitor yang akan mengaktifkan program bila bagian tertentu di layar disentuh dengan tangan. Layar sentuh ini biasanya terbungkus oleh plastik dan di belakangnya terdapat sinar inframerah yang tidak terlihat.',
                style: TextStyle(fontSize: 20, color: Colors.black),
                textAlign: TextAlign.justify,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 10),
              child: const Text(
                'd) Barcode reader merupakan alat untuk membaca kode / pola barcode pada barang- barang yang dijual di toko-toko swalayan untuk mempercepat proses pemasukan data transaksi penjualan. Barcode dibedakan menjadi 2 jenis, yaitu barcode 1 dimensi dan barcode 2 dimensi.',
                style: TextStyle(fontSize: 20, color: Colors.black),
                textAlign: TextAlign.justify,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 10),
              child: const Text(
                'e) Image Scanner merupakan piranti yang dapat mengambil masukan data gambar, foto, bahkan juga tulisan tangan. Hasil scan akan diubah menjadi isyarat digital dan akan ditampilkan di monitor komputer kemudian dapat disimpan sebagai file serta dapat diubah / dimodifikasi sesuai kebutuhan. Scanner bekerja pada resolusi warna 1-bit (binary digit), 8-bit (256 warna), atau 24 bit (lebih dari 16 juta warna). Semakin besar resolusi scanner akan memberikan hasil yang lebih baik.',
                style: TextStyle(fontSize: 20, color: Colors.black),
                textAlign: TextAlign.justify,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 10),
              child: const Text(
                'f) Webcam (web camera) merupakan perangkat sederhana berupa alat perekam atau kamera mini yang terhubung dengan internet. Webcam memberikan kemudahan penggunanya untuk berkomunikasi jarak jauh dengan menampilkan video call melalui fitur yang didukung dengan internet.',
                style: TextStyle(fontSize: 20, color: Colors.black),
                textAlign: TextAlign.justify,
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              margin: const EdgeInsets.symmetric(vertical: 15),
              child: const Text(
                '2. PERIPHERAL OUTPUT',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 10),
              child: const Text(
                'Alat Keluaran (Output Device) adalah perangkat keras komputer yang berfungsi untuk menampilkan / mencetak keluaran sebagai hasil pengolahan data.Alat keluaran terdiri atas hard copy, softcopy. Contoh alat keluaran, antara lain:',
                style: TextStyle(fontSize: 20, color: Colors.black),
                textAlign: TextAlign.justify,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 10),
              child: const Text(
                'a) Monitor, merupakan suatu alat yang digunakan sebagai output data tampilan grafis pada komputer tersebut. Ketajaman gambar yang ditampilkan pada sebuah layar monitor sangat ditentukan oleh resolusi. Ada beberapa jenis atau tipe monitor yang paling populer yaitu CRT (tampilan monitornya dihasilkan dari pancaran sinar katoda yang berkecepatan tinggi di dalam sebuah tabung yang hampa udara) dan LCD (menggunakan kristal cair sebagai bahan utamanya).',
                style: TextStyle(fontSize: 20, color: Colors.black),
                textAlign: TextAlign.justify,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 10),
              child: const Text(
                'b) Printer adalah perangkat keras (hardware) dimana perangkat itu akan bekerja apabila pengguna menghubungkannya dengan perangkat komputer, yang bisadigunakan untuk keperluan mencetak tulisan, gambar, dan grafik ke dalam bentuk kertas atau sejenisnya. output komputer yang berupa gambar ataupun grafik. Dengan menghubungkan plotter pada sistem komputer, maka berbagai bentuk gambar akan dapat disajikan secara prima.',
                style: TextStyle(fontSize: 20, color: Colors.black),
                textAlign: TextAlign.justify,
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              margin: const EdgeInsets.symmetric(vertical: 15),
              child: const Text(
                '3. PERIPHERAL STORAGE',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 10),
              child: const Text(
                'Peripheral storage adalah perangkat penyimpanan. Contoh dari peripheral storage ini, antara lain:',
                style: TextStyle(fontSize: 20, color: Colors.black),
                textAlign: TextAlign.justify,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 10),
              child: const Text(
                'a) External hard drive, yaitu media penyimpan data yang berada di luar casing komputer.',
                style: TextStyle(fontSize: 20, color: Colors.black),
                textAlign: TextAlign.justify,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 10),
              child: const Text(
                'b) Flash drive adalah alat penyimpan data/file yang berupa NAND. Di dalam perangkat ini, tertanam controller dan memori penyimpan data yang bersifat non–volatile alias tidak akan hilang meskipun tidak terdapat daya listrik. Flashdisk berfungsi untuk menyimpan dan memindahkan data.',
                style: TextStyle(fontSize: 20, color: Colors.black),
                textAlign: TextAlign.justify,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 10),
              child: const Text(
                'c) CD/DVD ROM drive, merupakan sebuah piringan kompak dari jenis piringan optik (optical disc) yang dapat menyimpan data. CD-ROM drive hanya bisa digunakan untuk membaca sebuah CD dan untuk melakukan penginstalasian sebuah OS (OPERATING SYSTEM), Game, atau Software-software lainnya. Secara garis besar CD-ROM dibedakan menjadi 2 menurut tipenya yaitu : ATA/IDE dan SCSI.',
                style: TextStyle(fontSize: 20, color: Colors.black),
                textAlign: TextAlign.justify,
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              margin: const EdgeInsets.symmetric(vertical: 15),
              child: const Text(
                '4. PERIPHERAL INPUT/OUTPUT',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 10),
              child: const Text(
                'a) Modem, berasal dari singkatan Modulator Demodulator. Modulator merupakan bagian yang mengubah sinyal informasi ke dalam sinyal pembawa (carrier) dan siap untuk dikirimkan, sedangkan Demodulator adalah bagian yang memisahkan sinyal informasi (yang berisi data atau pesan) dari sinyal pembawa yang diterima sehingga informasi tersebut dapat diterima dengan baik. Data dari komputer yang berbentuk sinyal digital diberikan kepada modem untuk diubah menjadi sinyal analog, ketika modem menerima data dari luar berupa sinyal analog, modem mengubahnya kembali ke sinyal digital supaya dapat diproses lebih lanjut oleh komputer.',
                style: TextStyle(fontSize: 20, color: Colors.black),
                textAlign: TextAlign.justify,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 10),
              child: const Text(
                'b) NIC (Network Interface Card) atau Kartu Jaringan atau LAN Card atau Etherned Card merupakan suatu perangkat yang menyambungkan kabel jaringan dengan computer serta menyediakan pengalamatan secara fisik.',
                style: TextStyle(fontSize: 20, color: Colors.black),
                textAlign: TextAlign.justify,
              ),
            ),
          ])),
    );
  }
}
