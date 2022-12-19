import 'package:edu_academy/quiz_bab/quiz_bab1.dart';
import 'package:edu_academy/quiz_bab/quiz_bab2.dart';
import 'package:flutter/material.dart';

class Quizz extends StatelessWidget {
  const Quizz({super.key});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 217, 217, 217),
      body: SingleChildScrollView(
        child: Column(children: <Widget>[
          Container(
            height: size.height * .3,
            color: Colors.purple,
            child: Stack(
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.fromLTRB(30, 60, 30, 30),
                  color: const Color.fromARGB(255, 83, 47, 97),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Flexible(
                          flex: 5,
                          fit: FlexFit.loose,
                          child: Container(
                            padding: const EdgeInsets.symmetric(vertical: 28),
                            child: Column(
                              children: <Widget>[
                                Container(
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 25),
                                  alignment: Alignment.centerLeft,
                                  child: const Text(
                                    'Quiz',
                                    style: TextStyle(
                                        fontSize: 40,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(right: 20),
                                  alignment: Alignment.centerRight,
                                  child: const Text(
                                    'Time',
                                    style: TextStyle(
                                        fontSize: 40,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                )
                              ],
                            ),
                          )),
                      Flexible(
                          flex: 5,
                          fit: FlexFit.loose,
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Image.asset('assets/quizzzz.png'),
                          ))
                    ],
                  ),
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
              ],
            ),
          ),
          Container(
            alignment: Alignment.center,
            height: size.height * .15,
            child: const Text(
              'Pilihlah paket soal sesuai materi \nyang sudah anda pelajari',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 30),
            child: Wrap(
              alignment: WrapAlignment.center,
              spacing: 30,
              runSpacing: 30,
              children: <Widget>[
                Container(
                  height: size.height * .15,
                  width: size.width * .4,
                  decoration: BoxDecoration(
                      color: Colors.purple,
                      borderRadius: BorderRadius.circular(20)),
                  child: Material(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.transparent,
                    child: InkWell(
                      splashColor: Colors.indigo,
                      borderRadius: BorderRadius.circular(20),
                      onTap: () => Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return const QuizBab1();
                        },
                      )),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const <Widget>[
                          Text(
                            'BAB 1',
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          Text(
                            '20 QUIZZES',
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  height: size.height * .15,
                  width: size.width * .4,
                  decoration: BoxDecoration(
                      color: Colors.purple,
                      borderRadius: BorderRadius.circular(20)),
                  child: Material(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.transparent,
                    child: InkWell(
                      splashColor: Colors.indigo,
                      borderRadius: BorderRadius.circular(20),
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const QuizBab2(),
                          )),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const <Widget>[
                          Text(
                            'BAB 2',
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          Text(
                            '20 QUIZZES',
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                // Container(
                //   height: size.height * .15,
                //   width: size.width * .4,
                //   decoration: BoxDecoration(
                //       color: Colors.purple,
                //       borderRadius: BorderRadius.circular(20)),
                //   child: Material(
                //     borderRadius: BorderRadius.circular(20),
                //     color: Colors.transparent,
                //     child: InkWell(
                //       splashColor: Colors.indigo,
                //       borderRadius: BorderRadius.circular(20),
                //       onTap: () => Navigator.of(context),
                //       child: Column(
                //         mainAxisAlignment: MainAxisAlignment.center,
                //         children: const <Widget>[
                //           Text(
                //             'BAB 3',
                //             style: TextStyle(
                //                 fontSize: 30,
                //                 fontWeight: FontWeight.bold,
                //                 color: Colors.white),
                //           ),
                //           Text(
                //             '20 QUIZZES',
                //             style: TextStyle(
                //                 fontSize: 25,
                //                 fontWeight: FontWeight.bold,
                //                 color: Colors.white),
                //           ),
                //         ],
                //       ),
                //     ),
                //   ),
                // ),
                // Container(
                //   height: size.height * .15,
                // ),
                // Container(
                //   alignment: Alignment.bottomCenter,
                //   height: size.height * 0.07,
                //   width: size.width * 0.8,
                //   decoration: BoxDecoration(
                //       color: Colors.purple,
                //       borderRadius: BorderRadius.circular(30)),
                //   child: Material(
                //     borderRadius: BorderRadius.circular(30),
                //     color: Colors.transparent,
                //     child: InkWell(
                //         splashColor: Colors.white,
                //         borderRadius: BorderRadius.circular(30),
                //         child: const Center(
                //             child: Text(
                //           'JAWABAN ANDA>>',
                //           style: TextStyle(
                //               fontSize: 25,
                //               fontWeight: FontWeight.bold,
                //               color: Colors.white),
                //         )),
                //         onTap: () => Navigator.of(context)),
                //   ),
                // ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
