import 'package:flutter/material.dart';

class Bab1 extends StatelessWidget {
  const Bab1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: <Widget>[
        SliverPersistentHeader(
          delegate: MainJudul(maxHeight: 200, minHeight: 180),
          pinned: true,
          floating: true,
        ),
        const TextMain1(),
        SliverPersistentHeader(
          delegate: JudulMateriA1(maxHeight: 60, minHeight: 60),
          pinned: true,
          floating: false,
        ),
        const TextA1(),
        SliverPersistentHeader(
          delegate: JudulMateriB1(maxHeight: 60, minHeight: 60),
          pinned: true,
          floating: false,
        ),
        const TextB1(),
        SliverPersistentHeader(
          delegate: JudulMateriC1(maxHeight: 60, minHeight: 60),
          pinned: true,
          floating: false,
        ),
        const TextC1(),
        SliverPersistentHeader(
          delegate: JudulMateriD1(maxHeight: 60, minHeight: 60),
          pinned: true,
          floating: false,
        ),
        const TextD1()
      ],
    ));
  }
}

class MainJudul extends SliverPersistentHeaderDelegate {
  MainJudul({required this.maxHeight, required this.minHeight});
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
                'BAB I',
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              Text(
                'Perawatan Perangkat Keras',
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

class JudulMateriA1 extends SliverPersistentHeaderDelegate {
  JudulMateriA1({required this.maxHeight, required this.minHeight});
  final double maxHeight;
  final double minHeight;
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Stack(fit: StackFit.expand, children: [
      Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'A. ',
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple),
            ),
            Expanded(
              child: Text(
                'Jenis-Jenis Perawatan Perangkat Keras Komputer',
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.purple),
              ),
            )
          ],
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

class JudulMateriB1 extends SliverPersistentHeaderDelegate {
  JudulMateriB1({required this.maxHeight, required this.minHeight});
  final double maxHeight;
  final double minHeight;
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Stack(fit: StackFit.expand, children: [
      Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        color: Colors.purple,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'B. ',
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            Expanded(
              child: Text(
                'Alat-Alat Kerja Perawatan Perangkat Keras Komputer',
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            )
          ],
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

class JudulMateriC1 extends SliverPersistentHeaderDelegate {
  JudulMateriC1({required this.maxHeight, required this.minHeight});
  final double maxHeight;
  final double minHeight;
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Stack(fit: StackFit.expand, children: [
      Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'C. ',
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple),
            ),
            Expanded(
              child: Text(
                'Langkah-Langkah Perawatan Perangkat Keras Komputer',
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.purple),
              ),
            )
          ],
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

class JudulMateriD1 extends SliverPersistentHeaderDelegate {
  JudulMateriD1({required this.maxHeight, required this.minHeight});
  final double maxHeight;
  final double minHeight;
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Stack(fit: StackFit.expand, children: [
      Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        color: Colors.purple,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'D. ',
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            Expanded(
              child: Text(
                'Rangkuman',
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            )
          ],
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

class TextMain1 extends StatelessWidget {
  const TextMain1({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
          padding: const EdgeInsets.all(10),
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'A. ',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.justify,
                ),
                Expanded(
                  child: Text(
                    'Jenis-Jenis Perawatan Perangkat Keras Komputer',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.justify,
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'B. ',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.justify,
                ),
                Expanded(
                  child: Text(
                    'Alat-Alat Kerja Perawatan Keras Komputer',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.justify,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'C. ',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.justify,
                ),
                Expanded(
                  child: Text(
                    'Jenis-Jenis Perawatan Perangkat Keras Komputer',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.justify,
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'D. ',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.justify,
                ),
                Expanded(
                  child: Text(
                    'Rangkuman',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.justify,
                  ),
                )
              ],
            ),
          ])),
    );
  }
}

class TextA1 extends StatelessWidget {
  const TextA1({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
          padding: const EdgeInsets.all(10),
          child: Column(children: [
            Container(
              margin: const EdgeInsets.only(bottom: 10),
              child: const Text(
                'Hardware adalah sebuah perangkat keras yang terdapat pada komputer dan bisa disentuh bentuknya, dari sebagian besar komponen hardware dialiri oleh energi listrik. Dan pada umumnya komponen hardware yang ada pada komponen sangat rentan sekali terhadap kerusakan yang diakibatkan oleh benda cair seperti contohnya minyak dan air.',
                style: TextStyle(fontSize: 20, color: Colors.black),
                textAlign: TextAlign.justify,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 10),
              child: const Text(
                'Berikut jenis-jenis perawatan perangkat keras komputer:',
                style: TextStyle(fontSize: 20, color: Colors.black),
                textAlign: TextAlign.justify,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 10),
              child: const Text(
                '1. Perawatan Pasif\nPerawatan pasif merupakan jenis perawatan komputer yang tidak disertai oleh perbaikan, dan pada umumnya perawatan pasif hanyalah mengecek kondisi perangkat dan juga membersihkannya. Untuk perawatan pasif sendiri bisa dilakukan secara terjadwal dalam melakukan perawatan misalnya dilakukan setahun sekali ataupun sebulan sekali. Seperti contoh dalam melakukan perawatan CPU/Prosesor, harus sering di-cek guna menjaga kesehatan pada komputer dan selalu mengecek keadaan thermal paste. Jika thermal paste sudah dalam keadaan kering maka harus segera diganti agar panas pada prosessor bisa berpindah secara sempurna ke heatsink. Dan hal yang sangat mudah di lakukan pada saat melakukan pengecekan adalah ketika keyboard berdebu, maka yang dilakukan hanya harus rutin dalam membersihkannya, karena pada saat ada kotoran masuk di dalam bawah tombol keyboard maka tombol keyboard yang berdebu tebal akan menimbulkan macet saat ditekan.',
                style: TextStyle(fontSize: 20, color: Colors.black),
                textAlign: TextAlign.justify,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 10),
              child: const Text(
                '2. Perawatan Aktif\nPerawatan aktif merupakan perawatan pada perangkat komputer yang disertai oleh perbaikan, dan biasanya perawatan ini sering dilakukan ketika salah satu perangkat computer mengalami masalah. Contohnya ketika keyboard sudah macet, pada saat itu baru akan melakukan perawatan. Karna pada dasarnya perawatan aktif akan lebih condong melakukan perbaikan saat komputer mengalami trouble. Untuk melakukan perawatan aktif ini sendiri tidak lah terjadwal, karena saat komputer sudah trouble saja dilakukan perawatan perangkat keras pada komputer.',
                style: TextStyle(fontSize: 20, color: Colors.black),
                textAlign: TextAlign.justify,
              ),
            )
          ])),
    );
  }
}

class TextB1 extends StatelessWidget {
  const TextB1({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
          padding: const EdgeInsets.all(10),
          child: Column(children: [
            Container(
              margin: const EdgeInsets.only(bottom: 10),
              child: const Text(
                '- Tang\nBiasanya jenis tang yang di perlukan untuk keperluan perawatan computer adalah tang cucut dan tang kombinasi. Tang cucut biasanya di gunakan untuk memegang kepala skrup atau jumper kecil. Sedangkan tang kombinasi di gunakan untuk memotong kabel dan keperluan lainnya.',
                style: TextStyle(fontSize: 20, color: Colors.black),
                textAlign: TextAlign.justify,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 10),
              child: const Text(
                '- Obeng\nObeng merupakan peralatan penting yang perlu dipakai untuk melakukan perawatan pada perangkat keras komputer. Karena dengan alat ini dapat dengan mudah membuka dan melepas komponen dalam komputer. Obeng yang digunakan adalah set obeng plus dan minus yang bermagnet.',
                style: TextStyle(fontSize: 20, color: Colors.black),
                textAlign: TextAlign.justify,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 10),
              child: const Text(
                '- Senter\nSenter digunakan untuk melakukan perawatan di tempat tertutup atau gelap. Senter juga berguna untuk melihat kabel-kabel kecil, bagian-bagian konektor dan perangkat kecil lainnya.',
                style: TextStyle(fontSize: 20, color: Colors.black),
                textAlign: TextAlign.justify,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 10),
              child: const Text(
                '- Kuas\nKuas berguna sebagai alat untuk membersihkan debu atau sarang serangga pada perangkat-perangkat komputer seperti motherboard, casing, keyboard dan sebagainya.',
                style: TextStyle(fontSize: 20, color: Colors.black),
                textAlign: TextAlign.justify,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 10),
              child: const Text(
                '- Kain kering atau tisu\nKain kering atau tisu digunakan untuk membersihkan kotoran cair yang mungkin terjadi akibat percikan minuman atau tinta yang terdapat pada komponen komputer. Kotoran cair sangat berbahaya jika tidak segera di bersihkan karena jenis kotoran ini dapat menghantarkan arus sehingga dapat mengakibatkan hubungan pendek atau kerusakan fatal pada komponen PC.',
                style: TextStyle(fontSize: 20, color: Colors.black),
                textAlign: TextAlign.justify,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 10),
              child: const Text(
                '- Cairan pembersih\nCairan pembersih digunakan untuk membersihkan noda atau kotoran yang sudah kering dan melekat seperti pada layer monitor atau tinta pada body printer.',
                style: TextStyle(fontSize: 20, color: Colors.black),
                textAlign: TextAlign.justify,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 10),
              child: const Text(
                '- Penyedot debu mini\nPenyedot debu mini ini hampir sama dengan kuas yang digunakan untuk menghilangkan debu. Namun penyedot debu ini lebih mudah dan lebih bersih dalam menghilangkan debu dan kotoran. pada ujung penyedot mini ini dilengkapi sikat dengan ukuran yang beragam yang dimaksudkan untuk disesuaikan dengan luas sempit celah-celah pada komponen. Alat ini sangat tepat di gunakan untuk membersihkan rangkaian di mainboard dan di sudut-sudut casing computer.',
                style: TextStyle(fontSize: 20, color: Colors.black),
                textAlign: TextAlign.justify,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 10),
              child: const Text(
                '- Disk Cleaner\nDisk Cleaner di gunakan untuk membersihkan head dan disk drive dari pengaruh debu atau kotoran yang menempel pada head floopy drive. Disk cleaner terdiri dari cairan pembersih dan floopydisk yang piringannya di ganti dengan kertas tisu.',
                style: TextStyle(fontSize: 20, color: Colors.black),
                textAlign: TextAlign.justify,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 10),
              child: const Text(
                '- CD cleaner\nCD Cleaner berfungsi untuk memebersihkan Head CD Drive atau lensa dengan cara menggosok bagian yang berdebu atau kotor dengan cariran pembersih yang memanfaatkan putaran.',
                style: TextStyle(fontSize: 20, color: Colors.black),
                textAlign: TextAlign.justify,
              ),
            )
          ])),
    );
  }
}

class TextC1 extends StatelessWidget {
  const TextC1({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
          padding: const EdgeInsets.all(10),
          child: Column(children: [
            Container(
              margin: const EdgeInsets.only(bottom: 10),
              child: const Text(
                '1. Sebisa mungkin tegangan listrik yang dikonsumsi komputer harus stabil. Tegangan listrik yang terlalu rendah dan terlalu tinggi dua-duanya merusak perangkat keras komputer. Oleh karena itu gunakanlah Stabilizer dan UPS untuk menjaga hal tersebut.',
                style: TextStyle(fontSize: 20, color: Colors.black),
                textAlign: TextAlign.justify,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 10),
              child: const Text(
                '2. Hidup matikan komputer sesuai prosedur. Jangan sekali-sekali langsung mencabut kabel listrik komputer pada saat komputer sedang beroperasi. Tindakan ini sangat berbahaya bagi kestabilan Power Suply komputer.',
                style: TextStyle(fontSize: 20, color: Colors.black),
                textAlign: TextAlign.justify,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 10),
              child: const Text(
                '3. Komputer harus terhindar dari sengatan matahari secara langsung.',
                style: TextStyle(fontSize: 20, color: Colors.black),
                textAlign: TextAlign.justify,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 10),
              child: const Text(
                '4. Jangan menaruh gelas dll yang berisi air atau benda cair lainnya demi menghindari siraman benda cair terhadap perangkat keras.',
                style: TextStyle(fontSize: 20, color: Colors.black),
                textAlign: TextAlign.justify,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 10),
              child: const Text(
                '5. Hindari menempatkan peralatan yang bersifat/dapat menimbulkan magnet di sekitar komputer, karena ini akan mengacaukan monitor dan dapat merusak perangkat keras internal unit CPU.',
                style: TextStyle(fontSize: 20, color: Colors.black),
                textAlign: TextAlign.justify,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 10),
              child: const Text(
                '6. Hidup matikan komputer sesuai prosedur. Jangan sekali-sekali langsung mencabut kabel listrik komputer pada saat komputer sedang beroperasi. Tindakan ini sangat berbahaya bagi kestabilan Power Suply komputer.',
                style: TextStyle(fontSize: 20, color: Colors.black),
                textAlign: TextAlign.justify,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 10),
              child: const Text(
                '7. Jangan menaruh gelas dll yang berisi air atau benda cair lainnya demi menghindari siraman benda cair terhadap perangkat keras.Hindari menempatkan peralatan yang bersifat/dapat menimbulkan.',
                style: TextStyle(fontSize: 20, color: Colors.black),
                textAlign: TextAlign.justify,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 10),
              child: const Text(
                '8.  magnet di sekitar komputer, karena ini akan mengacaukan monitor dan dapat merusak perangkat keras internal unit CPU.',
                style: TextStyle(fontSize: 20, color: Colors.black),
                textAlign: TextAlign.justify,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 10),
              child: const Text(
                '9. Secara berkala bersihkan bagian komputer dari debu yang melekat dengan menggunakan kuas cat, lap halus dan alat penyemprot udara.',
                style: TextStyle(fontSize: 20, color: Colors.black),
                textAlign: TextAlign.justify,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 10),
              child: const Text(
                '10. Secara keseluruhan bersihkan permukaan Mainboard dengan menggunakan pompa udara untuk menghilangkan debu. Terutama pada bagian socket memory karena jika socket ini kotor/berdebu maka memory tidak akan bekerja maksimal.',
                style: TextStyle(fontSize: 20, color: Colors.black),
                textAlign: TextAlign.justify,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 10),
              child: const Text(
                '11. Bersihkan heatsink dan fan cooler CPU dengan kuas halus atau pompa udara.',
                style: TextStyle(fontSize: 20, color: Colors.black),
                textAlign: TextAlign.justify,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 10),
              child: const Text(
                '12. Buka memory RAM dengan hati-hati dan bersihkan dengan lap halus terutama pada bagian kakinya.',
                style: TextStyle(fontSize: 20, color: Colors.black),
                textAlign: TextAlign.justify,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 10),
              child: const Text(
                '13. Buka Power Suply dengan obeng dan persihkan dengan hati-hati.',
                style: TextStyle(fontSize: 20, color: Colors.black),
                textAlign: TextAlign.justify,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 10),
              child: const Text(
                '14. Bersihkan semua port eksternal yang ada pada Mainboard, terutama port USB.',
                style: TextStyle(fontSize: 20, color: Colors.black),
                textAlign: TextAlign.justify,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 10),
              child: const Text(
                '15. Jika anda menggunakan VGA card ad on bersihkan terutama pada bagian heat sink dari debu.',
                style: TextStyle(fontSize: 20, color: Colors.black),
                textAlign: TextAlign.justify,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 10),
              child: const Text(
                '16. Bersihkan dengan menggunakan kuas halus bagian permukaan Keyboard.',
                style: TextStyle(fontSize: 20, color: Colors.black),
                textAlign: TextAlign.justify,
              ),
            )
          ])),
    );
  }
}

class TextD1 extends StatelessWidget {
  const TextD1({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
          padding: const EdgeInsets.all(10),
          child: Column(children: [
            Container(
              margin: const EdgeInsets.only(bottom: 10),
              child: const Text(
                '1. Jenis-jenis Perawatan Perangkat Keras Komputer itu ada 2 yaitu perawatan aktif dan perawatan pasif.',
                style: TextStyle(fontSize: 20, color: Colors.black),
                textAlign: TextAlign.justify,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 10),
              child: const Text(
                '2. Perawatan pasif merupakan jenis perawatan komputer yang tidak disertai oleh perbaikan, dan pada umumnya perawatan pasif hanyalah mengecek kondisi perangkat dan juga membersihkannya',
                style: TextStyle(fontSize: 20, color: Colors.black),
                textAlign: TextAlign.justify,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 10),
              child: const Text(
                '3. Perawatan aktif merupakan perawatan pada perangkat komputer 1. yang disertai oleh perbaikan, dan biasanya perawatan ini sering dilakukan ketika salah satu perangkat computer mengalami masalah.',
                style: TextStyle(fontSize: 20, color: Colors.black),
                textAlign: TextAlign.justify,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 10),
              child: const Text(
                '4. Ada alat kerja yang di gunakan dalam perawatan perangkat keras computer.',
                style: TextStyle(fontSize: 20, color: Colors.black),
                textAlign: TextAlign.justify,
              ),
            )
          ])),
    );
  }
}
