import 'package:flutter/material.dart';

class QuizBab2 extends StatelessWidget {
  const QuizBab2({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Stack(children: [
        Column(
          children: <Widget>[
            Container(
              height: size.height * .29,
              color: Colors.purple,
              child: Container(
                  padding: const EdgeInsets.only(top: 25),
                  alignment: Alignment.center,
                  child: Image.asset('assets/quizbab.png')),
            ),
            Container(
              height: size.height * .01,
              color: Colors.white,
            )
          ],
        ),
        Container(
          margin: const EdgeInsets.fromLTRB(10, 20, 0, 0),
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
    );
  }
}
