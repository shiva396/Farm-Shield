// ignore_for_file: unused_field, non_constant_identifier_names

import 'package:farmshield/languages/translator.dart';
import 'package:farmshield/settings/edit_screen.dart';
import 'package:farmshield/utils/forward_button.dart';
import 'package:farmshield/settings/setting_item.dart';
import 'package:farmshield/settings/setting_switch.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:translator/translator.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  bool isDarkMode = false;
  var language_code;

  @override
  void initState() {
    language_code = lang.indexOf(language_selected);
    super.initState();
  }

  var selected;
  List<String> lang = [
    "Tamil",
    'Hindi',
    'Malayalam',
    'Telugu',
    'English',
    'Japanese',
    'Italian',
    'Arabic',
    'Chinese',
    'Korean',
    'Spanish',
    'Latin',
    'German',
    'Kannada',
    'Russian',
    'Urdu',
    'Portuguese',
    'French',
    'Bengali',
    'Dutch',
    'Greek',
    'Gujarati',
    'Malay',
    'Marathi',
    'Nepali'
  ];
  List code = [
    'ta',
    'hi',
    'ml',
    'te',
    'en',
    'ja',
    'it',
    'ar',
    'zh',
    'ko',
    'es',
    'la',
    'de',
    'kn',
    'ru',
    'ur',
    'pt',
    'fr',
    'bn',
    'nl',
    'el',
    'gu',
    'ms',
    'mr',
    'ne',
  ];

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  var language_selected = "English";
  // final trans = GoogleTranslator();

  String translate_to_any_language({required String input_string}) {
    var output = "";
    final trans = GoogleTranslator();
    var s = trans
        .translate(input_string.toString(), from: 'auto', to: 'mr'.toString())
        .then((
      out,
    ) {
      print(out);
      setState(() {
        output = out.toString();
      });
    });
    return output;
  }

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
                translate_to_any_language(input_string: "Settings"),
                // "Settings",
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 40),
              Text(
                translate_to_any_language(input_string: "Account"),
                // "Account",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: Row(
                  children: [
                    Image.asset("assets/icons/apple.png",
                        width: 70, height: 70),
                    const SizedBox(width: 20),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Harisharajan",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "sit21cs163@sairamtap.edu.in",
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
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const EditAccountScreen(),
                          ),
                        );
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
                        height: 600,
                        color: Color.fromARGB(255, 132, 238, 185),
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

                  print("language");
                  // return DropdownButtonFormField(
                  //   items: lang
                  //       .map((value) => DropdownMenuItem(
                  //             value: value,
                  //             child: Text(
                  //               value,
                  //               style: const TextStyle(
                  //                   color: Colors.deepPurpleAccent,
                  //                   fontStyle: FontStyle.italic,
                  //                   fontWeight: FontWeight.bold),
                  //             ),
                  //           ))
                  //       .toList(),
                  //   onChanged: (select) {
                  //     setState(() {
                  //       selected = select;
                  //     });
                  //   },
                  //   value: selected,
                  // );
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => const Translate()));
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
            ],
          ),
        ),
      ),
    );
  }
}
