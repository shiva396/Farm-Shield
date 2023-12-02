// ignore_for_file: prefer_const_constructors
import 'package:farmshield/firebase_options.dart';
import 'package:farmshield/language/lang.dart';
import 'package:farmshield/provider/firebase_collections.dart';
import 'package:farmshield/theme/consts/theme_data.dart';
import 'package:farmshield/theme/provider/dark_theme_provider.dart';
import 'package:farmshield/widgets/loading.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  DarkThemeProvider themeChangeProvider = DarkThemeProvider();
  LanguageProvider languageChangeProvider = LanguageProvider();

  void getCurrentAppTheme() async {
    themeChangeProvider.setDarkTheme =
        await themeChangeProvider.darkThemePreferences.getTheme();
  }

  @override
  void initState() {
    getCurrentAppTheme();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => AuthProvider(),
        ),
        ChangeNotifierProvider(create: (_) => themeChangeProvider),
        ChangeNotifierProvider(create: (_) => languageChangeProvider)
      ],
      child:
          Consumer<DarkThemeProvider>(builder: (context, themeProvider, child) {
        return GetMaterialApp(
          translations: LocalString(),
          locale: Locale('en', 'US'),
          debugShowCheckedModeBanner: false,
          theme: Styles.themeData(themeProvider.getDarkTheme, context),
          // ThemeData(
          //     primaryColor: kPrimaryColor,
          //     scaffoldBackgroundColor: Colors.white,
          //     elevatedButtonTheme: ElevatedButtonThemeData(
          //       style: ElevatedButton.styleFrom(
          //         elevation: 0,
          //         backgroundColor: kPrimaryColor,
          //         shape: const StadiumBorder(),
          //         maximumSize: const Size(double.infinity, 56),
          //         minimumSize: const Size(double.infinity, 56),
          //       ),
          //     ),
          //     inputDecorationTheme: const InputDecorationTheme(
          //       filled: true,
          //       fillColor: kPrimaryLightColor,
          //       iconColor: kPrimaryColor,
          //       prefixIconColor: kPrimaryColor,
          //       contentPadding: EdgeInsets.symmetric(
          //           horizontal: defaultPadding, vertical: defaultPadding),
          //       border: OutlineInputBorder(
          //         borderRadius: BorderRadius.all(Radius.circular(30)),
          //         borderSide: BorderSide.none,
          //       ),
          //     )),
          home: const Loading(),
        );
      }),
    );
  }
}
