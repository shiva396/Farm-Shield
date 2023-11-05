import 'package:farmshield/auth/loginwidget.dart';
import 'package:farmshield/auth/signup.dart';
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
    return isLogin ? const LoginWidget() : const SignUp();
  }
}
