// ignore_for_file: use_build_context_synchronously, unused_local_variable, dead_code, unused_element, non_constant_identifier_names, prefer_final_fields, avoid_print

import 'package:farmshield/authentication/signup.dart';
import 'package:farmshield/screens/disease_detection.dart';
import 'package:farmshield/utils/color_util.dart';
import 'package:farmshield/utils/custom_button.dart';
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
    emailController.clear();
    passwordContoller.clear();
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
    return null;
  }

  bool show_password = true;

  var _text = "";
  @override
  Widget build(BuildContext context) {
    bool focus = false;

    return Scaffold(
        body: ValueListenableBuilder(
            valueListenable: emailController,
            builder: (context, TextEditingValue value, __) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextFormField(
                      validator: (value) {
                        var availableValue = value ?? '';
                        if (availableValue.isEmpty) {
                          return ("Username is required");
                        }
                        if (!availableValue.contains("@") ||
                            !availableValue.endsWith("gmail.com")) {
                          return ("Username should be a valid Gmail address");
                        }
                        return null;
                      },
                      onEditingComplete: () {
                        setState(() {
                          focus = FocusScope.of(context).nextFocus();
                        });
                      },
                      onChanged: (value) {
                        setState(() => _text);
                      },
                      autofocus: focus,
                      controller: emailController,
                      decoration: InputDecoration(
                          focusedErrorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)),
                          disabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)),
                          errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)),
                          errorText: _errorText,
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)),
                          labelText: 'Enter your Email',
                          prefixIcon: const Icon(Icons.email)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                        validator: (PassCurrentValue) {
                          RegExp regex = RegExp(
                              r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
                          var passNonNullValue = PassCurrentValue ?? "";
                          if (passNonNullValue.isEmpty) {
                            return ("Password is required");
                          } else if (passNonNullValue.length < 6) {
                            return ("Password Must be more than 5 characters");
                          } else if (!regex.hasMatch(passNonNullValue)) {
                            return ("Password should contain upper,lower,digit and Special character ");
                          }
                          return null;
                        },
                        obscureText: show_password,
                        controller: passwordContoller,
                        decoration: InputDecoration(
                          focusedErrorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)),
                          disabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)),
                          errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)),
                          // errorText: _errorpasswordText,
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)),
                          labelText: 'Enter Password',
                          prefixIcon: const Icon(Icons.lock),
                          suffixIcon: IconButton(
                            icon: Icon(show_password == true
                                ? Icons.remove_red_eye
                                : Icons.enhanced_encryption_sharp),
                            onPressed: () {
                              setState(() {
                                show_password == true
                                    ? show_password = false
                                    : show_password = true;
                                print(show_password);
                              });
                            },
                          ),
                        )),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomButton(
                    onPressed: () {},
                    text: "Sign in",
                  ),
                  ElevatedButton(
                      // onPressed: _controller.value.text.isNotEmpty
                      //   ? _submit
                      //   : null,
                      // child: Text(
                      //   'Submit',
                      //   style: Theme.of(context).textTheme.headline6,
                      // ),
                      onPressed: () async {
                        await signIn();
                      },
                      child: const Text('Sign in')),
                  const Text("No Account"),
                  GestureDetector(
                    child: const Text("Sign Up"),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignUp()));
                    },
                  )
                ],
              );
            }));
  }

  Future signIn() async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: emailController.text.trim(),
          password: passwordContoller.text.trim());
      // .whenComplete(() => Navigator.push(
      //     context,
      //     MaterialPageRoute(
      //         builder: (context) => const DiseaseDetection())));
    } on FirebaseAuthException catch (e) {
      showSnackBar(context, e.toString());
    }
  }
}
