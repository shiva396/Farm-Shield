// ignore_for_file: use_build_context_synchronously

import 'package:farmshield/auth/signup.dart';
import 'package:farmshield/utils/color_util.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({super.key});

  @override
  State<LoginWidget> createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordContoller = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordContoller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(
          height: 40,
        ),
        TextField(
          controller: emailController,
          decoration: const InputDecoration(labelText: 'Enter your Email'),
        ),
        TextField(
          controller: passwordContoller,
          decoration: const InputDecoration(labelText: 'Enter Password'),
          obscureText: true,
        ),
        const SizedBox(
          height: 20,
        ),
        ElevatedButton(
            onPressed: () async {
              await signIn();
            },
            child: const Text('Sign in')),
        const Text("No Account"),
        GestureDetector(
          child: const Text("Sign Up"),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const SignUp()));
          },
        )
      ],
    ));
  }

  Future signIn() async {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => const Center(
              child: CircularProgressIndicator(),
            ));

    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: emailController.text.trim(),
          password: passwordContoller.text.trim());
    } on FirebaseAuthException catch (e) {
      showSnackBar(context, e.toString());
    }

    GlobalKey<NavigatorState>().currentState!.pop();
  }
}
