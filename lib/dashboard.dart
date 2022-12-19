import 'package:edu_academy/dashboard/descapp.dart';
import 'package:edu_academy/dashboard/materi.dart';
import 'package:edu_academy/dashboard/quizz.dart';
import 'package:edu_academy/dashboard/skor.dart';
import 'package:edu_academy/dashboard/tutor.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 166, 166, 166),
        body: Stack(
          children: <Widget>[
            Container(
              height: size.height * .40,
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 178, 121, 202)),
            ),
            Stack(children: [
              Column(
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.fromLTRB(10, 30, 0, 0),
                    alignment: Alignment.topLeft,
                    child: IconButton(
                        icon: const Icon(
                          Icons.arrow_back_ios_new_rounded,
                          size: 35,
                        ),
                        color: Colors.black,
                        onPressed: () => Navigator.of(context).pop()),
                  ),
                  Container(
                    alignment: Alignment.centerRight,
                    margin: const EdgeInsets.fromLTRB(20, 30, 20, 0),
                    height: size.height * .13,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 95, 65, 108),
                        borderRadius: BorderRadius.circular(10)),
                    child: Image.asset('assets/Question_Isometric 1.png'),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 30),
                    height: size.height * .10,
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 95, 65, 108),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20))),
                  )
                ],
              ),
            ]),
            Container(
              alignment: Alignment.topCenter,
              margin: const EdgeInsets.only(top: 50),
              child: const Text(
                'Dashboard',
                style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            Column(
              children: <Widget>[
                Container(
                  height: size.height * .34,
                ),
                Expanded(
                    child: Wrap(
                  alignment: WrapAlignment.center,
                  spacing: 30,
                  runSpacing: 30,
                  children: <Widget>[
                    Container(
                      height: size.height * .18,
                      width: size.width * .4,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 178, 121, 202),
                          borderRadius: BorderRadius.circular(20)),
                      child: Material(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.transparent,
                        child: InkWell(
                          splashColor: Colors.indigo,
                          borderRadius: BorderRadius.circular(20),
                          onTap: () =>
                              Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return const DescApp();
                            },
                          )),
                          child: const Center(
                            child: Text(
                              'Deskripsi',
                              style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: size.height * .18,
                      width: size.width * .4,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 178, 121, 202),
                          borderRadius: BorderRadius.circular(20)),
                      child: Material(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.transparent,
                        child: InkWell(
                          splashColor: Colors.indigo,
                          borderRadius: BorderRadius.circular(20),
                          onTap: () => Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const Tutor();
                          })),
                          child: const Center(
                            child: Text(
                              'Tutorial',
                              style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: size.height * .18,
                      width: size.width * .4,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 178, 121, 202),
                          borderRadius: BorderRadius.circular(20)),
                      child: Material(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.transparent,
                        child: InkWell(
                          splashColor: Colors.indigo,
                          borderRadius: BorderRadius.circular(20),
                          onTap: () =>
                              Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return const Materi();
                            },
                          )),
                          child: const Center(
                            child: Text(
                              'Materi',
                              style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: size.height * .18,
                      width: size.width * .4,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 178, 121, 202),
                          borderRadius: BorderRadius.circular(20)),
                      child: Material(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.transparent,
                        child: InkWell(
                          splashColor: Colors.indigo,
                          borderRadius: BorderRadius.circular(20),
                          onTap: () =>
                              Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return const Quizz();
                            },
                          )),
                          child: const Center(
                            child: Text(
                              'Quiz Time',
                              style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: size.height * .18,
                      width: size.width * .4,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 178, 121, 202),
                          borderRadius: BorderRadius.circular(20)),
                      child: Material(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.transparent,
                        child: InkWell(
                          splashColor: Colors.indigo,
                          borderRadius: BorderRadius.circular(20),
                          onTap: () =>
                              Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return const Skor();
                            },
                          )),
                          child: const Center(
                            child: Text(
                              'Skor ',
                              style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                )),
              ],
            ),
          ],
        ));
  }
}
