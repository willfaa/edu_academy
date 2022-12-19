import 'package:flutter/material.dart';

class Tutor extends StatefulWidget {
  const Tutor({super.key});

  @override
  State<Tutor> createState() => _TutorState();
}

class _TutorState extends State<Tutor> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: size.height * .3,
              color: Colors.purple,
              child: Stack(children: <Widget>[
                Container(
                  alignment: Alignment.bottomCenter,
                  child: Image.asset('assets/Video tutorial _Flatline 1.png'),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(10, 30, 0, 0),
                  alignment: Alignment.topLeft,
                  child: IconButton(
                    icon: const Icon(
                      Icons.arrow_back_ios_new_rounded,
                      size: 35,
                    ),
                    color: Colors.black,
                    onPressed: () => Navigator.of(context).pop(),
                  ),
                ),
              ]),
            ),
            Container(
              alignment: Alignment.center,
              height: size.height * .1,
              child: const Text(
                'Tutorial Aplikasi',
                style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 20),
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: const Text(
                '1. Pilihlah Bab yang sesuai dengan keinginan anda.',
                textAlign: TextAlign.justify,
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 20),
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: const Text(
                '2. Bacalah Bab tersebut dan pahami isi materi yang ada.',
                textAlign: TextAlign.justify,
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 20),
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: const Text(
                '3. Setelah membaca materi, silahkan melakukan quiz dengan pilihan bab yang sudah anda pelajari.',
                textAlign: TextAlign.justify,
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 20),
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: const Text(
                '4. Setelah melakukan quiz, anda dapat melihat skor akhir anda, selamat mengerjakan!.',
                textAlign: TextAlign.justify,
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
