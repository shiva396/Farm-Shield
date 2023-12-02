// ignore_for_file: unused_field, non_constant_identifier_names, unused_import, unused_local_variable

import 'dart:io';

import 'package:farmshield/language/lang.dart';
import 'package:farmshield/pages/plant_custom.dart';
import 'package:farmshield/provider/firebase_collections.dart';
import 'package:farmshield/settings/account_view.dart';
import 'package:farmshield/settings/edit_screen.dart';
import 'package:farmshield/theme/models/dark_theme_preference.dart';
import 'package:farmshield/theme/provider/dark_theme_provider.dart';
import 'package:farmshield/utils/forward_button.dart';
import 'package:farmshield/settings/setting_item.dart';
import 'package:farmshield/settings/setting_switch.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:ionicons/ionicons.dart';
import 'package:provider/provider.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  final List locale = [
    {'name': 'ENGLISH', 'locale': const Locale('en', 'US')},
    {'name': 'MARATHI', 'locale': const Locale('mr', 'IN')},
  ];

  updatelanguage(Locale locale) {
    Get.back();
    Get.updateLocale(locale);
  }

  builddialog(BuildContext context, languageChange) {
    showDialog(
        context: context,
        builder: (builder) {
          return AlertDialog(
            title: Text("chooselang".tr),
            content: Container(
              width: double.maxFinite,
              child: ListView.separated(
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                        onTap: () {
                          setState(() {
                            // language_selected = locale[index]['name'];
                            languageChange.setDarkTheme =
                                languageChange.getDarkTheme == "ma"
                                    ? "en"
                                    : "ma";
                          });
                          updatelanguage(locale[index]['locale']);
                        },
                        child: Text(locale[index]['name'])),
                  );
                },
                separatorBuilder: (context, index) {
                  return const Divider(
                    color: Colors.blue,
                  );
                },
                itemCount: locale.length,
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    final ap = Provider.of<AuthProvider>(context, listen: false);

    final themeChange = Provider.of<DarkThemeProvider>(context);
    final languageChange = Provider.of<LanguageProvider>(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "settings".tr,
                style: const TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 40),
              // Text(
              //   "account".tr,
              //   style: const TextStyle(
              //     fontSize: 24,
              //     fontWeight: FontWeight.w500,
              //   ),
              // ),
              // const SizedBox(height: 20),
              // SizedBox(
              //   width: double.infinity,
              //   child: Row(
              //     children: [
              //       Image.asset("assets/icons/avatar.png",
              //           width: 70, height: 70),
              //       const SizedBox(width: 20),
              //       Column(
              //         crossAxisAlignment: CrossAxisAlignment.start,
              //         children: [
              //           Text(
              //             // ?
              //             "createaccount".tr,
              //             // : "View Account",
              //             style: const TextStyle(
              //               fontSize: 18,
              //               fontWeight: FontWeight.w500,
              //             ),
              //           ),
              //           const SizedBox(height: 10),
              //           const Text(
              //             "as",
              //             style: TextStyle(
              //               fontSize: 14,
              //               color: Colors.grey,
              //             ),
              //           ),
              //         ],
              //       ),
              //       const Spacer(),
              //       ForwardButton(
              //         onTap: () {
              //           // if (ap.userModel.email.isEmpty) {
              //           Navigator.push(
              //             context,
              //             MaterialPageRoute(
              //               builder: (context) => const EditAccountScreen(),
              //             ),
              //           );
              //           // } else {
              //           // Navigator.push(
              //           //   context,
              //           //   MaterialPageRoute(
              //           //     builder: (context) => const ShowProfile(),
              //           //   ),
              //           // );
              //           // }
              //         },
              //       )
              //     ],
              //   ),
              // ),
              // const SizedBox(height: 40),
              // Text(
              //   "settings".tr,
              //   style: const TextStyle(
              //     fontSize: 24,
              //     fontWeight: FontWeight.w500,
              //   ),
              // ),
              // const SizedBox(height: 20),
              // ap.userModel.name.isNotEmpty
              //     ? SettingItem(
              //         title: "Edit Profile",
              //         icon: Ionicons.person,
              //         bgColor: const Color.fromARGB(206, 255, 158, 128),
              //         iconColor: Colors.deepOrangeAccent,
              //         onTap: () {
              //           Navigator.push(
              //               context,
              //               MaterialPageRoute(
              //                   builder: (context) => EditAccountScreen()));
              //         },
              //       )
              //     : SizedBox(),
              const SizedBox(height: 20),
              SettingItem(
                  title: "language".tr,
                  icon: Ionicons.earth,
                  bgColor: Colors.orange.shade100,
                  iconColor: Colors.orange,
                  value: languageChange.getDarkTheme == "en"
                      ? "English"
                      : "Marathi",
                  onTap: () {
                    builddialog(context, languageChange);
                  }),
              const SizedBox(height: 20),

              SettingSwitch(
                title: "theme".tr,
                icon: Ionicons.invert_mode,
                bgColor: Colors.purple.shade100,
                iconColor: Colors.purple,
                value: themeChange.getDarkTheme,
                onTap: (value) {
                  themeChange.setDarkTheme = value;
                },
              ),
              const SizedBox(height: 20),
              SettingItem(
                title: "about".tr,
                icon: Icons.description,
                bgColor: Colors.red.shade100,
                iconColor: Colors.red,
                onTap: () {},
              ),
              const SizedBox(height: 20),
              SettingItem(
                title: "virplant".tr,
                icon: Icons.forest,
                bgColor: Colors.green.shade100,
                iconColor: Colors.green,
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const PlantApp()));
                },
              ),
            ],
            // final themeChange = Provider.of<DarkThemeProvider>(context);
            // return Scaffold(
            //   body: SizedBox(
            //     height: MediaQuery.of(context).size.height,
            //     child: SingleChildScrollView(
            //       child: Padding(
            //         padding: const EdgeInsets.all(30),
            //         child: Column(
            //           crossAxisAlignment: CrossAxisAlignment.start,
            //           children: [
            //             const Text(
            //               "Settings",
            //               style: TextStyle(
            //                 fontSize: 36,
            //                 fontWeight: FontWeight.bold,
            //               ),
            //             ),
            //             const SizedBox(height: 40),
            //             const Text(
            //               "Account",
            //               style: TextStyle(
            //                 fontSize: 24,
            //                 fontWeight: FontWeight.w500,
            //               ),
            //             ),
            //             const SizedBox(height: 20),
            //             SizedBox(
            //               width: double.infinity,
            //               child: Row(
            //                 children: [
            //                   Image.asset("assets/icons/avatar.png",
            //                       width: 70, height: 70),
            //                   const SizedBox(width: 20),
            //                   const Column(
            //                     crossAxisAlignment: CrossAxisAlignment.start,
            //                     children: [
            //                       Text(
            //                         // ?
            //                         "Create Account",
            //                         // : "View Account",
            //                         style: TextStyle(
            //                           fontSize: 18,
            //                           fontWeight: FontWeight.w500,
            //                         ),
            //                       ),
            //                       SizedBox(height: 10),
            //                       Text(
            //                         // ap.userModel.email.isEmpty ? "" : ap.userModel.email,
            //                         "as",
            //                         style: TextStyle(
            //                           fontSize: 14,
            //                           color: Colors.grey,
            //                         ),
            //                       )
            //                     ],
            //                   ),
            //                   const Spacer(),
            //                   ForwardButton(
            //                     onTap: () {
            //                       // if (ap.userModel.email.isEmpty) {
            //                       Navigator.push(
            //                         context,
            //                         MaterialPageRoute(
            //                           builder: (context) => const EditAccountScreen(),
            //                         ),
            //                       );
            //                       // } else {
            //                       // Navigator.push(
            //                       //   context,
            //                       //   MaterialPageRoute(
            //                       //     builder: (context) => const ShowProfile(),
            //                       //   ),
            //                       // );
            //                       // }
            //                     },
            //                   )
            //                 ],
            //               ),
            //             ),
            //             const SizedBox(height: 40),
            //             const Text(
            //               "Settings",
            //               style: TextStyle(
            //                 fontSize: 24,
            //                 fontWeight: FontWeight.w500,
            //               ),
            //             ),
            //             const SizedBox(height: 20),
            //             // ap.userModel.name.isNotEmpty
            //             //     ? SettingItem(
            //             //         title: "Edit Profile",
            //             //         icon: Ionicons.person,
            //             //         bgColor: const Color.fromARGB(206, 255, 158, 128),
            //             //         iconColor: Colors.deepOrangeAccent,
            //             //         onTap: () {
            //             //           Navigator.push(
            //             //               context,
            //             //               MaterialPageRoute(
            //             //                   builder: (context) => EditAccountScreen()));
            //             //         },
            //             //       )
            //             //     : SizedBox(),
            //             const SizedBox(height: 20),
            //             SettingItem(
            //                 title: "Language",
            //                 icon: Ionicons.earth,
            //                 bgColor: Colors.orange.shade100,
            //                 iconColor: Colors.orange,
            //                 value: language_selected,
            //                 onTap: () {
            //                   builddialog(context);
            //                 }),
            //             const SizedBox(height: 20),
            //             SettingItem(
            //               title: "Notifications",
            //               icon: Ionicons.notifications,
            //               bgColor: Colors.blue.shade100,
            //               iconColor: Colors.blue,
            //               onTap: () {},
            //             ),
            //             const SizedBox(height: 20),
            //             SettingSwitch(
            //               title: "Dark Mode",
            //               icon: Ionicons.invert_mode,
            //               bgColor: Colors.purple.shade100,
            //               iconColor: Colors.purple,
            //               value: themeChange.getDarkTheme,
            //               onTap: (value) {
            //                 setState(() {
            //                   themeChange.setDarkTheme = value;
            //                   print(value);
            //                 });
            //               },
            //             ),
            //             const SizedBox(height: 20),
            //             SettingItem(
            //               title: "About",
            //               icon: Icons.description,
            //               bgColor: Colors.red.shade100,
            //               iconColor: Colors.red,
            //               onTap: () {},
            //             ),
            //             const SizedBox(height: 20),
            //             SettingItem(
            //               title: "Grow virtual plant",
            //               icon: Icons.forest,
            //               bgColor: Colors.green.shade100,
            //               iconColor: Colors.green,
            //               onTap: () {
            //                 Navigator.push(
            //                     context,
            //                     MaterialPageRoute(
            //                         builder: (context) => const PlantApp()));
            //               },
            //             ),
            //           ],
            //         ),
          ),
        ),
      ),
    );
  }
}
