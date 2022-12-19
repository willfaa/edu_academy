import 'package:edu_academy/quiz_bab/question_start1.dart';
import 'package:flutter/material.dart';

class QuizBab1 extends StatelessWidget {
  const QuizBab1({super.key});

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
            ),
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.all(15),
              child: const Text(
                'QUIZ BAB 1',
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 0, 0, 0)),
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.all(10),
              child: const Text(
                'Sebelum memulai persiapkan diri anda, karena jika sudah menekan tombol maka quiz akan dimulai!!!',
                style: TextStyle(fontSize: 20, color: Colors.white),
                textAlign: TextAlign.justify,
              ),
            ),
            Container(
              margin: const EdgeInsets.all(15),
              height: size.height * 0.07,
              width: size.width * 0.8,
              decoration: BoxDecoration(
                  color: Colors.purple,
                  borderRadius: BorderRadius.circular(30)),
              child: Material(
                borderRadius: BorderRadius.circular(30),
                color: Colors.transparent,
                child: InkWell(
                  splashColor: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  child: const Center(
                      child: Text('Mulai',
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.white))),
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) {
                    return const QuizStart1();
                  })),
                ),
              ),
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
