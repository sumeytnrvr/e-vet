//import 'package:e_vet/pages/home_page.dart';
import 'package:e_vet/pages/intro_screen_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E-VET',
      theme: ThemeData(

        primarySwatch: Colors.blue,
        textTheme:GoogleFonts.poppinsTextTheme(
          Theme.of(context).textTheme,
        )
      ),
      home: const IntroScreenPage(),
    );
  }
}
