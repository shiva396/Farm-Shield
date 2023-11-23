// ignore_for_file: use_build_context_synchronously, unused_local_variable, avoid_print

import 'dart:io';

import 'package:farmshield/provider/firebase_collections.dart';
import 'package:farmshield/models/user_model.dart';
import 'package:farmshield/settings/edit_item.dart';
import 'package:farmshield/utils/color_util.dart';
import 'package:farmshield/utils/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';
import 'package:provider/provider.dart';

class EditAccountScreen extends StatefulWidget {
  const EditAccountScreen({super.key});

  @override
  State<EditAccountScreen> createState() => _EditAccountScreenState();
}

class _EditAccountScreenState extends State<EditAccountScreen> {
  String gender = "male";
  File? image;
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final ageController = TextEditingController();
  final phoneController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    ageController.dispose();
    phoneController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  Future<void> selectedImage() async {
    if (mounted) {
      image = await pickImage(context);
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    final ap = Provider.of<AuthProvider>(context, listen: false);

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Ionicons.chevron_back_outline),
        ),
        leadingWidth: 80,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(
              onPressed: () {},
              style: IconButton.styleFrom(
                backgroundColor: Colors.lightBlueAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                fixedSize: const Size(60, 50),
                elevation: 3,
              ),
              icon: const Icon(Ionicons.checkmark, color: Colors.white),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "account".tr,
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 40),
              EditItem(
                title: "Photo",
                widget: Column(
                  children: [
                    InkWell(
                      onTap: () {
                        selectedImage();
                      },
                      child: image == null
                          ? const CircleAvatar(
                              backgroundColor: Colors.purple,
                              radius: 40,
                              child: Icon(
                                Icons.account_circle,
                                size: 40,
                                color: Colors.white,
                              ),
                            )
                          : CircleAvatar(
                              backgroundImage: FileImage(image!),
                              radius: 50,
                            ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              EditItem(
                title: "plantname".tr,
                widget: TextField(
                  controller: nameController,
                  keyboardType: TextInputType.name,
                ),
              ),
              const SizedBox(height: 40),
              EditItem(
                title: "gender".tr,
                widget: Row(
                  children: [
                    OutlinedButton.icon(
                      style: OutlinedButton.styleFrom(
                          backgroundColor: gender == 'male'
                              ? const Color.fromARGB(161, 217, 177, 232)
                              : Colors.white),
                      label: Text('male'.tr),
                      onPressed: () {
                        setState(() {
                          gender = 'male';
                        });
                      },
                      icon: const Icon(Icons.male),
                    ),
                    const SizedBox(width: 20),
                    OutlinedButton.icon(
                      style: OutlinedButton.styleFrom(
                          backgroundColor: gender == 'female'
                              ? const Color.fromARGB(161, 217, 177, 232)
                              : Colors.white),
                      label: Text('female'.tr),
                      onPressed: () {
                        setState(() {
                          gender = 'female';
                        });
                      },
                      icon: const Icon(Icons.male),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 40),
              EditItem(
                widget: TextField(
                  controller: ageController,
                  keyboardType: TextInputType.number,
                ),
                title: "age".tr,
              ),
              const SizedBox(height: 40),
              EditItem(
                widget: TextField(
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                ),
                title: "email".tr,
              ),
              const SizedBox(height: 40),
              EditItem(
                widget: TextField(
                  controller: phoneController,
                  keyboardType: TextInputType.phone,
                ),
                title: "phnumber".tr,
              ),
              const SizedBox(height: 40),
              EditItem(
                widget: TextField(
                  controller: passwordController,
                  keyboardType: TextInputType.visiblePassword,
                ),
                title: "password".tr,
              ),
              const SizedBox(height: 40),
              SizedBox(
                height: 50,
                width: MediaQuery.of(context).size.width * 0.90,
                child: CustomButton(
                  text: 'continue'.tr,
                  onPressed: () async {
                    await userData();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> userData() async {
    final ap = Provider.of<AuthProvider>(context, listen: false);
    // if (ap.userModel!.name.isNotEmpty) {
    // UserModel userModel = UserModel(
    //   gender: gender.trim(),
    //   name: nameController.text.trim().isEmpty
    //       ? ap.userModel!.name
    //       : nameController.text.trim(),
    //   email: emailController.text.trim().isEmpty
    //       ? ap.userModel!.email
    //       : emailController.text.trim(),
    //   age: ageController.text.trim().isEmpty
    //       ? ap.userModel!.age
    //       : ageController.text.trim(),
    //   profilePic: '',
    //   createdAt: DateTime.now().toString(),
    //   phoneNumber: phoneController.text.trim().isEmpty
    //       ? ap.userModel!.phoneNumber
    //       : phoneController.text.trim(),
    //   // uid: phoneController.text.trim(),
    // );
    // if (image != null) {
    //   userModel.profilePic =
    //       await ap.storeFileToStorage("profilePic}", image!);
    //   // ignore: use_build_context_synchronously
    //   ap.updateUserDataToFirebase(
    //     context: context,
    //     userModel: userModel,
    //     profilePic: image!,
    //     onSuccess: () async {
    //       // once data is saved  we store locally
    //       ap.saveUserDataToSP().then(
    //         (value) {
    //           ap.setSignIn();
    //           Navigator.pop(context, 'Update Sucessful');
    //         },
    //       );
    //     },
    //   );
    // } else {
    //   showSnackBar(context, 'Please upload your profile photo');
    // }
    // } else {
    if (emailController.text.trim().isNotEmpty &&
        image != null &&
        nameController.text.trim().isNotEmpty &&
        gender.isNotEmpty &&
        ageController.text.isNotEmpty &&
        emailController.text.trim().isNotEmpty &&
        phoneController.text.trim().isNotEmpty) {
      if (mounted) {
        UserModel userModel = UserModel(
          gender: gender.trim(),
          name: nameController.text.trim(),
          email: emailController.text.trim(),
          age: ageController.text.trim(),
          profilePic: '',
          createdAt: DateTime.now().toString(),
          phoneNumber: phoneController.text.trim(),
          uid: phoneController.text.trim(),
        );
        if (image != null) {
          userModel.profilePic =
              await ap.storeFileToStorage("profilePic/", image!);

          ap.createAccount(
              emailController: emailController,
              passwordController: passwordController,
              context: context);
          ap.saveUserDataToFirebase(
            context: context,
            userModel: userModel,
            profilePic: image!,
            onSuccess: () async {
              // once data is saved  we store locally
              ap.saveUserDataToSP().then(
                (value) {
                  ap.setSignIn();
                  Navigator.pop(context, 'Update Sucessful');
                },
              );
            },
          );
        } else {
          showSnackBar(context, 'Please upload your profile photo');
        }
      } else {
        print("Error");
      }
    }
  }
}
// }
