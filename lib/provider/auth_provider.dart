// ignore_for_file: use_build_context_synchronously

import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:farmshield/models/admin_model.dart';
import 'package:farmshield/utils/color_util.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthProvider extends ChangeNotifier {
  bool _isSignedIn = false;
  bool get isSignedIn => _isSignedIn;
  bool _isLoading = false;
  bool get isLoading => _isLoading;
  String? _uid;
  String get uid => _uid!;

  AdminModel? _adminModel; // Add an instance of the AdminModel
  AdminModel get adminModel => _adminModel!;

  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;
  final FirebaseStorage _firebaseStorage = FirebaseStorage.instance;

  AuthProvider() {
    checkSign();
  }

  void checkSign() async {
    final SharedPreferences s = await SharedPreferences.getInstance();
    _isSignedIn = s.getBool("is_signedin") ?? false;
    notifyListeners();
  }

  Future setSignIn() async {
    final SharedPreferences s = await SharedPreferences.getInstance();
    s.setBool("is_signedin", true);
    _isSignedIn = true;
    notifyListeners();
  }

  Future signIn(emailController, passwordContoller, context) async {
    // showDialog(
    //     context: context,
    //     barrierDismissible: false,
    //     builder: (context) => const Center(
    //           child: CircularProgressIndicator(),
    //         ));

    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: emailController.text.trim(),
          password: passwordContoller.text.trim());
    } on FirebaseAuthException catch (e) {
      showSnackBar(context, e.toString());
    }

    // GlobalKey<NavigatorState>().currentState!.pop();
  }

  // signin using otp
  // void signInWithPhone(BuildContext context, String phoneNumber,
  //     VoidCallback startTimer, String app) async {
  //   try {
  //     await _firebaseAuth.verifyPhoneNumber(
  //       phoneNumber: phoneNumber,
  //       verificationCompleted: (PhoneAuthCredential phoneAuthCredential) async {
  //         await _firebaseAuth.signInWithCredential(phoneAuthCredential);
  //       },
  //       verificationFailed: (error) {
  //         showSnackBar(context, error.message.toString());
  //         throw Exception(error.message);
  //       },
  //       codeSent: (verificationId, forceResendingToken) {
  //         startTimer();
  //         Navigator.push(
  //           context,
  //           MaterialPageRoute(
  //             builder: (context) => OtpScreen(
  //               app: app,
  //               verificationId: verificationId,
  //               forceResendingToken: forceResendingToken,
  //               startTimer: startTimer,
  //               phoneNumber: phoneNumber,
  //             ),
  //           ),
  //         );
  //       },
  //       codeAutoRetrievalTimeout: (verificationId) {},
  //       timeout: const Duration(seconds: 120),
  //       forceResendingToken: null,
  //     );
  //   } on FirebaseAuthException catch (e) {
  //     showSnackBar(context, e.message.toString());
  //   }
  // }

//  Admin verify otp
  // void adminverifyOtp({
  //   required BuildContext context,
  //   required String verificationId,
  //   required String adminOtp,
  //   required Function onSuccess,
  // }) async {
  //   _isLoading = true;
  //   notifyListeners();

  //   try {

  //     PhoneAuthCredential creds =
  //      PhoneAuthProvider.credential(
  //         verificationId: verificationId, smsCode: adminOtp);

  //     User? user = (await _firebaseAuth.signInWithCredential(creds)).user;

  //     if (user != null) {
  //       // carry our logic
  //       _uid = user.uid;
  //       onSuccess();
  //     }
  //     _isLoading = false;
  //     notifyListeners();
  //   } on FirebaseAuthException catch (e) {
  //     showSnackBar(context, e.message.toString());
  //     _isLoading = false;
  //     notifyListeners();
  //   }
  // }

  // DATABASE OPERATIONS

// admin database
  Future<bool> admincheckExistingUser() async {
    DocumentSnapshot snapshot =
        await _firebaseFirestore.collection("admin").doc(_uid).get();
    if (snapshot.exists) {
      return true;
    } else {
      return false;
    }
  }

  //admin save to firebase
  void adminsaveUserDataToFirebase({
    required BuildContext context,
    required AdminModel adminModel,
    required File profilePic,
    required Function onSuccess,
  }) async {
    _isLoading = true;
    notifyListeners();
    try {
      // uploading image to firebase storage.
      await adminstoreFileToStorage("profilePic/$_uid", profilePic)
          .then((value) {
        adminModel.profilePic = value;
        adminModel.createdAt = DateTime.now().millisecondsSinceEpoch.toString();
        adminModel.phoneNumber = _firebaseAuth.currentUser!.phoneNumber!;
        adminModel.uid = _firebaseAuth.currentUser!.phoneNumber!;
      });
      _adminModel = adminModel;

      // uploading to database
      await _firebaseFirestore
          .collection("admin")
          .doc(_uid)
          .set(adminModel.toMap())
          .then((value) {
        onSuccess();
        _isLoading = false;
        notifyListeners();
      });
    } on FirebaseAuthException catch (e) {
      showSnackBar(context, e.message.toString());
      _isLoading = false;
      notifyListeners();
    }
  }

  //admin data
  void adminupdateUserDataToFirebase({
    required BuildContext context,
    required AdminModel adminModel,
    required File profilePic,
    required Function onSuccess,
  }) async {
    {
      _isLoading = true;
      notifyListeners();
      try {
        // uploading image to firebase storage.
        await adminstoreFileToStorage("profilePic/$_uid", profilePic)
            .then((value) {
          adminModel.profilePic = value;
          adminModel.createdAt =
              DateTime.now().millisecondsSinceEpoch.toString();
          adminModel.phoneNumber = _firebaseAuth.currentUser!.phoneNumber!;
          adminModel.uid = _firebaseAuth.currentUser!.phoneNumber!;
        });
        _adminModel = adminModel;

        // uploading to database
        await _firebaseFirestore
            .collection("admin")
            .doc(_uid)
            .set(adminModel.toMap())
            .then((value) {
          onSuccess();
          _isLoading = false;
          notifyListeners();
        });
      } on FirebaseAuthException catch (e) {
        showSnackBar(context, e.message.toString());
        _isLoading = false;
        notifyListeners();
      }
    }
  }

  //admin storage
  Future<String> adminstoreFileToStorage(String ref, File file) async {
    UploadTask uploadTask = _firebaseStorage.ref().child(ref).putFile(file);
    TaskSnapshot snapshot = await uploadTask;
    String downloadUrl = await snapshot.ref.getDownloadURL();
    return downloadUrl;
  }

  //admin data get
  Future admingetDataFromFirestore() async {
    await _firebaseFirestore
        .collection("admin")
        .doc(_firebaseAuth.currentUser!.uid)
        .get()
        .then((DocumentSnapshot snapshot) {
      _adminModel = AdminModel(
          name: snapshot['name'],
          password: snapshot['password'],
          email: snapshot['email'],
          createdAt: snapshot['createdAt'],
          uid: snapshot['uid'],
          profilePic: snapshot['profilePic'],
          phoneNumber: snapshot['phoneNumber'],
          // locations: snapshot['locations']
          bio: snapshot['bio']);

      _uid = adminModel.uid;
    });
  }

  // STORING DATA LOCALLY

// admin data storing
  Future adminsaveUserDataToSP() async {
    SharedPreferences ss = await SharedPreferences.getInstance();
    await ss.setString("admin_model", jsonEncode(adminModel.toMap()));
  }

// sp admin data get
  Future admingetDataFromSP() async {
    SharedPreferences ss = await SharedPreferences.getInstance();
    String data = ss.getString("admin_model") ?? '';
    _adminModel = AdminModel.fromMap(jsonDecode(data));
    _uid = _adminModel!.uid;
    notifyListeners();
  }

  //** feedback storing in firestore */
}
