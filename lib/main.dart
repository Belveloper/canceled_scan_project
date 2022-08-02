import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:untitled/IntroScreen.dart';


void main() {
  runApp( MaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          elevation: 0,
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Colors.white,
            statusBarBrightness: Brightness.light,
            statusBarIconBrightness: Brightness.dark
          )
        ),
      ),

      debugShowCheckedModeBanner: false, home: const ScanApp()));
}

class ScanApp extends StatelessWidget {
  const ScanApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return const IntroScreen();
  }
}
