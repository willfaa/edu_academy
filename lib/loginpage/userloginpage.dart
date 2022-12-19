import 'package:edu_academy/dashboard.dart';
import 'package:edu_academy/loginpage/registrationpage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class UserLoginPage extends StatefulWidget {
  const UserLoginPage({super.key});

  @override
  State<UserLoginPage> createState() => _UserLoginPageState();
}

class _UserLoginPageState extends State<UserLoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.purple[50],
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            size: 35,
          ),
          color: Colors.grey[700],
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: const Color.fromARGB(0, 255, 255, 255),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        child: Column(
          children: [
            Container(
              height: size.height * 0.0001,
            ),
            const Text(
              'Welcome To Edu Academy',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple),
            ),
            Image.asset(
              'assets/Designer_Flatline 1.png',
            ),
            Container(
              height: size.height * 0.05,
            ),
            Container(
              margin: const EdgeInsets.only(
                bottom: 20,
                left: 50,
                right: 50,
              ),
              child: TextField(
                controller: emailController,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.allow(RegExp("[0-9a-zA-Z@.]"))
                ],
                style: const TextStyle(fontSize: 20, color: Colors.purple),
                decoration: const InputDecoration(
                    hintText: 'email',
                    hintStyle: TextStyle(fontSize: 20, color: Colors.purple),
                    prefixIcon: Icon(
                      FontAwesomeIcons.circleUser,
                      size: 25,
                    )),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 50, right: 50),
              child: TextField(
                controller: passwordController,
                obscureText: true,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.allow(RegExp("[0-9a-zA-Z]"))
                ],
                style: const TextStyle(fontSize: 20, color: Colors.purple),
                decoration: const InputDecoration(
                    hintText: 'Password',
                    hintStyle: TextStyle(fontSize: 20, color: Colors.purple),
                    prefixIcon: Icon(
                      Icons.lock_outline_rounded,
                      size: 27,
                    )),
              ),
            ),
            Container(
              height: size.height * 0.1,
            ),
            SizedBox(
              height: size.height * 0.07,
              width: size.width * 0.8,
              child: ConstrainedBox(
                constraints: BoxConstraints.tightFor(
                    height: size.height * .07, width: size.width * .8),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30))),
                    onPressed: (() async {
                      try {
                        await FirebaseAuth.instance
                            .signInWithEmailAndPassword(
                                email: emailController.text.trim(),
                                password: passwordController.text.trim())
                            .then((value) => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: ((context) =>
                                        const Dashboard()))));
                      } on FirebaseAuthException catch (e) {
                        print(e.message);
                      }
                    }),
                    child: const Text(
                      'Masuk',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.purple),
                    )),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10, bottom: 10),
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
                    onTap: (() => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const RgstrPage(),
                        ))),
                    child: const Center(
                        child: Text(
                      'Register',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ))),
              ),
            )
          ],
        ),
      ),
    );
  }
}
