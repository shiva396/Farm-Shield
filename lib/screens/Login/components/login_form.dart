// ignore_for_file: unused_element, use_build_context_synchronously, unused_local_variable, non_constant_identifier_names

import 'package:farmshield/utils/color_util.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../../components/already_have_an_account_acheck.dart';
import '../../../constants.dart';
import '../../Signup/signup_screen.dart';

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

  String? get _errorText {
    // at any time, we can get the text from _controller.value.text
    final text = emailController.value.text;
    // Note: you can do your own custom validation here
    // Move this logic this outside the widget for more testable code
    // if (text.isEmpty) {
    //   return 'Can\'t be empty';
    // }
    // if (text.length < 4) {
    //   return 'Too short';
    // }
    // return null if the text is valid
    return null;
  }

  String? get _errorpasswordText {
    final text = emailController.value.text;
    RegExp regex =
        RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
    if (text.isEmpty) {
      return 'Please enter password';
    } else {
      if (!regex.hasMatch(text)) {
        return 'Enter valid password';
      } else {
        return null;
      }
    }
    // at any time, we can get the text from _controller.value.text
    // final text = emailController.value.text;
    // // Note: you can do your own custom validation here
    // // Move this logic this outside the widget for more testable code
    // if (text.isEmpty) {
    //   return 'Can\'t be empty';
    // }
    // if (text.length < 4) {
    //   return 'Too short';
    // }
    // // return null if the text is valid
    // return null;
  }

  bool show_password = true;

  // var _text = "";
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: emailController,
        builder: (context, TextEditingValue value, __) {
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
                  obscureText: true,
                  cursorColor: kPrimaryColor,
                  decoration: const InputDecoration(
                    hintText: "Your password",
                    prefixIcon: Padding(
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
                    signIn();
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
          ));
        });
  }

  Future signIn() async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: emailController.text.trim(),
          password: passwordContoller.text.trim());
    } on FirebaseAuthException catch (e) {
      showSnackBar(context, e.toString());
    }
  }
}
