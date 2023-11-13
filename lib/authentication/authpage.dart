import 'package:farmshield/screens/Signup/Welcome/welcome_screen.dart';
import 'package:farmshield/screens/Signup/signup_screen.dart';
import 'package:flutter/material.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  bool isLogin = true;
  @override
  Widget build(BuildContext context) {
    return isLogin ? const WelcomeScreen() : const SignUpScreen();
    // const LoginWidget() : const SignUp();
  }
}
