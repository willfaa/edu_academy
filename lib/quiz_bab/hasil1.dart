import 'package:flutter/material.dart';

class Hasil1 extends StatefulWidget {
  final int score1;
  const Hasil1(this.score1, {Key? key}) : super(key: key);
  @override
  Hasil1State createState() => Hasil1State();
}

class Hasil1State extends State<Hasil1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.center,
            child: const Text(
              'Selamat!!, Nilai Anda Adalah:',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
          Container(
              alignment: Alignment.center,
              child: Text(
                "${widget.score1 * 10}/100",
                style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ))
        ],
      ),
    );
  }
}

class HasilSkor1 extends Hasil1 {
  HasilSkor1(super.score1);
}
