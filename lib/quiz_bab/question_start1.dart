import 'package:edu_academy/quiz_bab/hasil1.dart';
import 'package:edu_academy/text/soal_bab1.dart';
import 'package:flutter/material.dart';

class QuizStart1 extends StatefulWidget {
  const QuizStart1({super.key});

  @override
  QuizStart1State createState() => QuizStart1State();
}

class QuizStart1State extends State<QuizStart1> {
  late int question1Pos;
  late int score1 = 0;
  bool btnPressed1 = false;
  PageController? _controller1 = PageController(initialPage: 0);
  String btnText = "Next Quizz";
  bool answered1 = false;
  @override
  void initState() {
    super.initState();
    _controller1 = PageController(initialPage: 0);
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: PageView.builder(
          controller: _controller1,
          onPageChanged: ((page) {
            if (page == questanswer1.length - 1) {
              setState(() {
                btnText = "Hasil";
              });
            }
            setState(() {
              answered1 = false;
            });
          }),
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: ((context, index) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: size.height * .07,
                ),
                Container(
                  // color: Colors.amber,
                  alignment: Alignment.center,
                  width: size.width * .7,
                  child: Text(
                    'Soal Ke ${index + 1}/10',
                    style: const TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.purple),
                  ),
                ),
                SizedBox(
                    width: size.width * .7,
                    child: const Divider(
                      color: Colors.black,
                      height: 10,
                      thickness: 2,
                    )),
                Container(
                  height: size.height * .05,
                ),
                Text(
                  questanswer1[index].question1!,
                  style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                Container(
                  height: size.height * .03,
                ),
                for (int i = 0; i < questanswer1[index].answers1!.length; i++)
                  Container(
                      height: size.height * .05,
                      width: double.infinity,
                      margin: const EdgeInsets.all(10),
                      child: RawMaterialButton(
                        onPressed: !answered1
                            ? () {
                                if (questanswer1[index]
                                    .answers1!
                                    .values
                                    .toList()[i]) {
                                  score1++;
                                }
                                setState(() {
                                  btnPressed1 = true;
                                  answered1 = true;
                                });
                              }
                            : null,
                        fillColor: btnPressed1
                            ? questanswer1[index].answers1!.values.toList()[i]
                                ? Colors.green
                                : Colors.red
                            : Colors.purple,
                        shape: const StadiumBorder(),
                        child: Text(
                          questanswer1[index].answers1!.keys.toList()[i],
                          style: const TextStyle(
                              fontSize: 23,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      )),
                Container(
                  height: size.height * .05,
                ),
                SizedBox(
                  height: size.height * 0.07,
                  width: size.width * 0.7,
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                        backgroundColor: Colors.white,
                        side: const BorderSide(color: Colors.purple, width: 3)),
                    child: Text(
                      btnText,
                      style: const TextStyle(
                          fontSize: 30,
                          color: Colors.purpleAccent,
                          fontWeight: FontWeight.bold),
                    ),
                    onPressed: () {
                      if (_controller1!.page?.toInt() ==
                          questanswer1.length - 1) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Hasil1(score1)));
                      } else {
                        _controller1!.nextPage(
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.easeInCubic);

                        setState(() {
                          btnPressed1 = false;
                        });
                      }
                    },
                  ),
                )
              ],
            );
          }),
          itemCount: questanswer1.length,
        ),
      ),
    );
  }
}
