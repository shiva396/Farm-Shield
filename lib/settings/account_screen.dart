// ignore_for_file: unused_field, non_constant_identifier_names

import 'package:farmshield/pages/plant_custom.dart';
import 'package:farmshield/provider/firebase_collections.dart';
import 'package:farmshield/settings/account_view.dart';
import 'package:farmshield/settings/edit_screen.dart';
import 'package:farmshield/utils/forward_button.dart';
import 'package:farmshield/settings/setting_item.dart';
import 'package:farmshield/settings/setting_switch.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:provider/provider.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  bool isDarkMode = false;
  String language_selected = "English";
  @override
  @override
  void dispose() {
    super.dispose();
  }

  List<String> lang = ["English", "Marathi"];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      color: Colors.white,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Settings",
                style: const TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 40),
              Text(
                "Account",
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: Row(
                  children: [
                    Image.asset("assets/icons/avatar.png",
                        width: 70, height: 70),
                    const SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          // ap.userModel.name.isEmpty
                          // ?
                          "Create Account"
                          // : "View Account"
                          ,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "sx",
                          // ap.userModel.email.isEmpty ? "" : ap.userModel.email,
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                          ),
                        )
                      ],
                    ),
                    const Spacer(),
                    ForwardButton(
                      onTap: () {
                        // if (ap.userModel.email.isEmpty) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const EditAccountScreen(),
                          ),
                        );
                        // } else {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ShowProfile(),
                          ),
                        );
                        // }
                      },
                    )
                  ],
                ),
              ),
              const SizedBox(height: 40),
              const Text(
                "Settings",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 20),
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
                title: "Language",
                icon: Ionicons.earth,
                bgColor: Colors.orange.shade100,
                iconColor: Colors.orange,
                value: language_selected,
                onTap: () {
                  showModalBottomSheet<void>(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    context: context,
                    builder: (BuildContext context) {
                      return Container(
                        height: 100,
                        color: Color.fromARGB(255, 170, 223, 196),
                        child: Center(
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                for (var item in lang)
                                  ListTile(
                                    title: Text(item.toString()),
                                    onTap: () {
                                      setState(() {
                                        language_selected = item.toString();
                                      });

                                      Navigator.pop(context);
                                    },
                                  )
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
              const SizedBox(height: 20),
              SettingItem(
                title: "Notifications",
                icon: Ionicons.notifications,
                bgColor: Colors.blue.shade100,
                iconColor: Colors.blue,
                onTap: () {},
              ),
              const SizedBox(height: 20),
              SettingSwitch(
                title: "Dark Mode",
                icon: Ionicons.invert_mode,
                bgColor: Colors.purple.shade100,
                iconColor: Colors.purple,
                value: isDarkMode,
                onTap: (value) {
                  setState(() {
                    isDarkMode = value;
                  });
                },
              ),
              const SizedBox(height: 20),
              SettingItem(
                title: "About",
                icon: Icons.description,
                bgColor: Colors.red.shade100,
                iconColor: Colors.red,
                onTap: () {},
              ),
              const SizedBox(height: 20),
              SettingItem(
                title: "Grow virtual plant",
                icon: Icons.forest,
                bgColor: Colors.green.shade100,
                iconColor: Colors.green,
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => PlantApp()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
