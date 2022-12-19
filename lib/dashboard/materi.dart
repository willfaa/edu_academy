// ignore_for_file: file_names

import 'package:edu_academy/bab_materi/bab_materi2.dart';
import 'package:edu_academy/bab_materi/bab_materi1.dart';
import 'package:flutter/material.dart';

class Materi extends StatelessWidget {
  const Materi({super.key});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              color: Colors.purple,
              height: size.height * .3,
              child: Stack(children: <Widget>[
                Container(
                  margin: const EdgeInsets.only(top: 40),
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    children: <Widget>[
                      Image.asset(
                        'assets/Data Arranging_Two Color 1.png',
                        scale: 1.2,
                      ),
                      const Text(
                        'Materi',
                        style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      )
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
              ]),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Container(
                margin: const EdgeInsets.only(top: 25, left: 25, bottom: 25),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.purple,
                    borderRadius: BorderRadius.circular(10)),
                width: size.width * .3,
                height: size.height * .06,
                child: const Text(
                  'Kelas X',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 20),
              child: InkWell(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Bab1(),
                    )),
                child: Container(
                  height: size.height * .15,
                  decoration: BoxDecoration(
                      color: Colors.purple,
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    children: <Widget>[
                      Flexible(
                          flex: 4,
                          fit: FlexFit.tight,
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(20, 20, 0, 20),
                            child: Container(
                              color: Colors.grey,
                            ),
                          )),
                      Flexible(
                          flex: 6,
                          fit: FlexFit.tight,
                          child: Container(
                            alignment: Alignment.centerLeft,
                            padding: const EdgeInsets.only(left: 20),
                            child: const Text(
                              'BAB 1',
                              style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ))
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 20),
              child: InkWell(
                onTap: () => Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return const Bab2();
                  },
                )),
                child: Container(
                  height: size.height * .15,
                  decoration: BoxDecoration(
                      color: Colors.purple,
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    children: <Widget>[
                      Flexible(
                          flex: 4,
                          fit: FlexFit.tight,
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(20, 20, 0, 20),
                            child: Container(
                              color: Colors.grey,
                            ),
                          )),
                      Flexible(
                          flex: 6,
                          fit: FlexFit.tight,
                          child: Container(
                            alignment: Alignment.centerLeft,
                            padding: const EdgeInsets.only(left: 20),
                            child: const Text(
                              'BAB 2',
                              style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ))
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
