import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:warehouse_manag/screen/bottomNavigation.dart';
import 'package:warehouse_manag/screen/liststock.dart';
import 'package:warehouse_manag/screen/login.dart';
import 'package:warehouse_manag/screen/ship.dart';
import 'package:warehouse_manag/screen/splash.dart';
import 'package:warehouse_manag/screen/stockinfo.dart';


void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
  textTheme: GoogleFonts.nunitoTextTheme(),
),
      home: SplashScreen(),
    );
  }
}