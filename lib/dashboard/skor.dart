import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Skor extends StatelessWidget {
  const Skor({super.key});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.purple,
      body: SingleChildScrollView(
        child: Stack(children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                height: size.height * .07,
              ),
              Container(
                height: size.height * .1,
                alignment: Alignment.center,
                child: const Text(
                  'Hasil Anda',
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
              Container(
                  margin: const EdgeInsets.symmetric(vertical: 20),
                  child: Image.asset('assets/skoruser.png')),
              Column(
                children: <Widget>[
                  Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 10),
                      alignment: Alignment.center,
                      height: size.height * .09,
                      decoration: BoxDecoration(color: Colors.grey[400]),
                      child: Text(
                        FirebaseAuth.instance.currentUser!.email!,
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      )),
                  Container(
                      margin: const EdgeInsets.symmetric(horizontal: 30),
                      alignment: Alignment.center,
                      height: size.height * .09,
                      decoration: BoxDecoration(color: Colors.grey[400]),
                      child: Text(
                        FirebaseAuth.instance.currentUser!.displayName ??
                            'User/Siswa',
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      )),
                  Container(
                    height: size.height * .11,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                        height: size.height * 0.17,
                        width: size.width * .3,
                        color: Colors.grey[400],
                        child: Column(
                          children: const <Widget>[
                            Text(
                              'Skor',
                              style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w100),
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: size.height * 0.17,
                        width: size.width * .3,
                        color: Colors.grey[400],
                        child: Column(
                          children: const <Widget>[
                            Text(
                              'Nilai',
                              style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w100),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
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
      ),
    );
  }
}
