// ignore_for_file: use_build_context_synchronously

import 'package:farmshield/constants.dart';
import 'package:farmshield/screens/SignUp/signup_screen.dart';
import 'package:farmshield/screens/components/alreadyhaveaccount.dart';
import 'package:farmshield/utils/color_util.dart';
import 'package:farmshield/widgets/loading.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({
    Key? key,
  }) : super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordContoller = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordContoller.dispose();
    super.dispose();
  }

  // ignore: non_constant_identifier_names
  bool show_password = true;

  // var _text = "";
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          TextFormField(
            controller: emailController,
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.next,
            cursorColor: kPrimaryColor,
            onSaved: (email) {},
            decoration: const InputDecoration(
              hintText: "Your email",
              prefixIcon: Padding(
                padding: EdgeInsets.all(defaultPadding),
                child: Icon(Icons.person),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: defaultPadding),
            child: TextFormField(
              controller: passwordContoller,
              textInputAction: TextInputAction.done,
              obscureText: show_password,
              cursorColor: kPrimaryColor,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  padding: EdgeInsets.zero,
                  icon: Icon(
                      color: const Color.fromARGB(255, 148, 67, 223),
                      show_password == true
                          ? Icons.visibility
                          : Icons.visibility_off),
                  onPressed: () {
                    setState(() {
                      show_password == true
                          ? show_password = false
                          : show_password = true;
                    });
                  },
                ),
                hintText: "Your password",
                prefixIcon: const Padding(
                  padding: EdgeInsets.all(defaultPadding),
                  child: Icon(Icons.lock),
                ),
              ),
            ),
          ),
          const SizedBox(height: defaultPadding),
          Hero(
            tag: "login_btn",
            child: ElevatedButton(
              onPressed: () {
                if (emailController.text.trim().isNotEmpty &&
                    passwordContoller.text.trim().isNotEmpty) {
                  signIn();
                } else {
                  showSnackBar(context, 'Please Enter the field');
                }
              },
              child: Text(
                "Login".toUpperCase(),
              ),
            ),
          ),
          const SizedBox(height: defaultPadding),
          AlreadyHaveAnAccountCheck(
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const SignUpScreen();
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  Future signIn() async {
    try {
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(
              email: emailController.text.trim(),
              password: passwordContoller.text.trim())
          .then(
            (v) => Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const Loading(),
              ),
            ),
          );
    } on FirebaseAuthException catch (e) {
      showSnackBar(context, e.toString());
    }
  }
}
