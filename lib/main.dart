import 'package:anteran_online/models/colors.dart';
import 'package:anteran_online/pages/formulir_pendaftaran.dart';
import 'package:anteran_online/pages/home.dart';
import 'package:anteran_online/pages/splash.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor:
        Color.fromARGB(255, 151, 179, 185).withOpacity(0.0), // status bar color
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          textTheme: GoogleFonts.poppinsTextTheme()
              .apply(bodyColor: ColorSelect.cFontGrey)),
    );
  }
}
