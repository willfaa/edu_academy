import 'package:flutter/material.dart';

class DescApp extends StatelessWidget {
  const DescApp({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.purple,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: size.height * .3,
              decoration: const BoxDecoration(color: Colors.purple),
              child: Stack(
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.only(top: 60),
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        const Expanded(
                          child: Text(
                            'Deskripsi Aplikasi',
                            style: TextStyle(
                                fontSize: 35,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                        Image.asset('assets/Designer_Isometric 1.png')
                      ],
                    ),
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
                ],
              ),
            ),
            Container(
                height: size.height * .1,
                alignment: Alignment.center,
                decoration: const BoxDecoration(color: Colors.white),
                child: const Text(
                  'Education Academy',
                  style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                )),
            Column(
              children: <Widget>[
                Container(
                  alignment: Alignment.center,
                  margin:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  child: Image.asset('assets/lampuremove.png'),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 20),
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: const Text(
                    'Education Academy adalah aplikasi yang di rancang '
                    'berbasis mobile dengan flutter yang memiki tujuan '
                    'khusus dalam bidang pembelajaran dimana aplikasi '
                    'ini memuat beberapa fitur yang di fungsikan untuk '
                    'membantu siswa mengasah dan mengetahui '
                    'kemampuan academiknya. di mana di dalamnya '
                    'terdapat fitur materi dan quiz',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
