import 'package:edu_academy/loginpage/userloginpage.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.purple[50],
      body: SingleChildScrollView(
        child: Column(children: <Widget>[
          Container(
            height: size.height * 0.1,
          ),
          Container(
            alignment: Alignment.center,
            child: const Text(
              'Education Academy',
              style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple),
            ),
          ),
          Container(
            height: size.height * 0.12,
          ),
          Image.asset('assets/loginpageicon.png'),
          Container(
            height: size.height * 0.1,
          ),
          Container(
            height: size.height * 0.07,
            width: size.width * 0.8,
            decoration: BoxDecoration(
                color: Colors.purple, borderRadius: BorderRadius.circular(30)),
            child: Material(
              borderRadius: BorderRadius.circular(30),
              color: Colors.transparent,
              child: InkWell(
                splashColor: Colors.white,
                borderRadius: BorderRadius.circular(30),
                child: const Center(
                    child: Text('Masuk',
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white))),
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) {
                  return const UserLoginPage();
                })),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
