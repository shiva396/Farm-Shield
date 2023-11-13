// // ignore_for_file: use_build_context_synchronously

// import 'package:farmshield/authentication/loginwidget.dart';
// import 'package:farmshield/screens/disease_detection.dart';
// import 'package:farmshield/utils/color_util.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';

// class SignUp extends StatefulWidget {
//   const SignUp({super.key});

//   @override
//   State<SignUp> createState() => _SignUpState();
// }

// class _SignUpState extends State<SignUp> {
//   final TextEditingController emailController = TextEditingController();
//   final TextEditingController passwordContoller = TextEditingController();
//   final TextEditingController checkpasswordController = TextEditingController();

//   @override
//   void dispose() {
//     emailController.dispose();
//     passwordContoller.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
//         const SizedBox(
//           height: 40,
//         ),
//         TextField(
//           controller: emailController,
//           decoration: const InputDecoration(labelText: 'Enter your Email'),
//         ),
//         TextField(
//           controller: passwordContoller,
//           decoration: const InputDecoration(labelText: 'Enter Password'),
//           obscureText: true,
//         ),
//         TextField(
//           controller: checkpasswordController,
//           decoration:
//               const InputDecoration(labelText: 'Re-Enter your Password'),
//           obscureText: true,
//         ),
//         const SizedBox(
//           height: 20,
//         ),
//         ElevatedButton(
//             onPressed: () {
//               signUpFunction();
//             },
//             child: const Text("Sign Up")),
//         const Text("Already have an account?"),
//         GestureDetector(
//           child: const Text("Sign in "),
//           onTap: () {
//             Navigator.push(context,
//                 MaterialPageRoute(builder: (context) => const LoginWidget()));
//           },
//         )
//       ]),
//     );
//   }

//   Future signUpFunction() async {
//     // showDialog(
//     //     context: context,
//     //     barrierDismissible: false,
//     //     builder: (context) => const Center(
//     //           child: CircularProgressIndicator(),
//     //         ));
//     try {
//       await FirebaseAuth.instance
//           .createUserWithEmailAndPassword(
//               email: emailController.text.trim(),
//               password: passwordContoller.text.trim())
//           .then((value) => Navigator.push(
//               context,
//               MaterialPageRoute(
//                   builder: (context) => const DiseaseDetection())));
//     } on FirebaseAuthException catch (e) {
//       showSnackBar(context, e.toString());
//     }
//     // GlobalKey<NavigatorState>().currentState!.pop();
//   }
// }
