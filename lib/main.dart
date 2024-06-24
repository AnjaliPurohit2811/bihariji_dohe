import 'package:bihariji_dohe/screens/dohescreen/dohe_screen.dart';
import 'package:bihariji_dohe/screens/homescreen/home_screen.dart';
import 'package:bihariji_dohe/screens/introductionscreen/introduction_screen.dart';
import 'package:bihariji_dohe/screens/introscreen/intro_screen.dart';
import 'package:bihariji_dohe/screens/splashscreen/splash_screen.dart';
import 'package:bihariji_dohe/screens/themescreen/json_provider.dart';
import 'package:bihariji_dohe/screens/themescreen/language_provider.dart';
import 'package:bihariji_dohe/screens/themescreen/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
    ),
    ChangeNotifierProvider(
      create: (context) => JsonDataProvider(),
    ),
    ChangeNotifierProvider(
      create: (context) => LanguageProvider(),
    ),

  ],child:  MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
      builder: (context, themeProvider, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData.light(),
          darkTheme: ThemeData.dark(),
          themeMode: ThemeMode.system,
          home: SplashScreen(

          ),
        );
      },
    );
  }
}
