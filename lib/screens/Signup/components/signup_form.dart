// ignore_for_file: use_build_context_synchronously, non_constant_identifier_names

import 'package:farmshield/screens/disease_detection.dart';
import 'package:farmshield/utils/color_util.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../../components/already_have_an_account_acheck.dart';
import '../../../constants.dart';
import '../../Login/login_screen.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({
    Key? key,
  }) : super(key: key);

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordContoller = TextEditingController();
  final TextEditingController checkpasswordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordContoller.dispose();
    super.dispose();
  }

  bool show_password = true;

  @override
  Widget build(BuildContext context) {
    return Form(
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
                suffixIcon: Padding(
                  padding: const EdgeInsets.all(defaultPadding),
                  child: IconButton(
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
                ),
                hintText: "Your password",
                prefixIcon: const Padding(
                  padding: EdgeInsets.all(defaultPadding),
                  child: Icon(Icons.lock),
                ),
              ),
            ),
          ),
          const SizedBox(height: defaultPadding / 2),
          ElevatedButton(
            onPressed: () {
              signUpFunction();
            },
            child: Text("Sign Up".toUpperCase()),
          ),
          const SizedBox(height: defaultPadding),
          AlreadyHaveAnAccountCheck(
            login: false,
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const LoginScreen();
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  Future signUpFunction() async {
    // showDialog(
    //     context: context,
    //     barrierDismissible: false,
    //     builder: (context) => const Center(
    //           child: CircularProgressIndicator(),
    //         ));
    try {
      await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
              email: emailController.text.trim(),
              password: passwordContoller.text.trim())
          .then((value) => Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const DiseaseDetection())));
    } on FirebaseAuthException catch (e) {
      showSnackBar(context, e.toString());
    }
    // GlobalKey<NavigatorState>().currentState!.pop();
  }
}
