import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:form_field_validator/form_field_validator.dart';

class RgstrPage extends StatefulWidget {
  const RgstrPage({super.key});

  @override
  State<RgstrPage> createState() => _RgstrPage();
}

class _RgstrPage extends State<RgstrPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    usernameController.dispose();
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
            size: 40,
          ),
          color: Colors.grey[700],
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Container(
            margin: const EdgeInsets.fromLTRB(0, 10, 0, 20),
            height: 200,
            child: Image.asset('assets/bxs_user.png'),
          ),
          Container(
            margin: const EdgeInsets.only(left: 50, right: 50, bottom: 20),
            child: TextFormField(
              validator: MultiValidator([
                RequiredValidator(errorText: 'Required'),
                EmailValidator(errorText: 'Enter Valid Email')
              ]),
              controller: emailController,
              style: const TextStyle(fontSize: 20, color: Colors.purple),
              decoration: const InputDecoration(
                hintText: 'Email',
                hintStyle: TextStyle(fontSize: 20, color: Colors.purple),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 50, right: 50, bottom: 20),
            child: TextField(
              // validator:
              //     MultiValidator([RequiredValidator(errorText: 'Required')]),
              controller: usernameController,
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.allow(RegExp("[0-9a-zA-Z]"))
              ],
              style: const TextStyle(fontSize: 20, color: Colors.purple),
              decoration: const InputDecoration(
                hintText: 'Username',
                hintStyle: TextStyle(fontSize: 20, color: Colors.purple),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 50, right: 50, bottom: 20),
            child: TextFormField(
              validator: MultiValidator([
                RequiredValidator(errorText: 'Required'),
              ]),
              controller: passwordController,
              obscureText: true,
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.allow(RegExp("[0-9a-zA-Z]"))
              ],
              style: const TextStyle(fontSize: 20, color: Colors.purple),
              decoration: const InputDecoration(
                hintText: 'Password',
                hintStyle: TextStyle(fontSize: 20, color: Colors.purple),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(
              left: 50,
              right: 50,
            ),
            child: TextFormField(
              validator: (val) {
                if (val!.isEmpty) {
                  return "Required";
                }
                return MatchValidator(errorText: "Passwords don't match")
                    .validateMatch(val, passwordController.text);
              },
              controller: confirmPasswordController,
              obscureText: true,
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.allow(RegExp("[0-9a-zA-Z]"))
              ],
              style: const TextStyle(fontSize: 20, color: Colors.purple),
              decoration: const InputDecoration(
                hintText: 'Re-Password',
                hintStyle: TextStyle(fontSize: 20, color: Colors.purple),
              ),
            ),
          ),
          Container(
            height: size.height * 0.08,
          ),
          SizedBox(
            height: size.height * 0.07,
            width: size.width * 0.8,
            child: ConstrainedBox(
              constraints: BoxConstraints.tightFor(
                  height: size.height * .07, width: size.width * .8),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.purple,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30))),
                onPressed: (() async {
                  if (FirebaseAuth.instance.currentUser == null) {
                    try {
                      await FirebaseAuth.instance
                          .createUserWithEmailAndPassword(
                              email: emailController.text.trim(),
                              password: passwordController.text.trim());
                    } on FirebaseAuthException catch (e) {
                      print(e.message);
                    }
                  } else {
                    FirebaseAuth.instance.signOut();
                  }
                }),
                child: const Text(
                  'Register',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
