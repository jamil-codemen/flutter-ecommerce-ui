import 'package:flutter/material.dart';
import 'package:flutteruiecom/pages/home_page.dart';
import 'package:flutteruiecom/pages/login_page.dart';
import 'package:flutteruiecom/utils/routes.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
      return MaterialApp(
        themeMode: ThemeMode.light,
        theme: ThemeData(
          primarySwatch: Colors.deepPurple,
          fontFamily: GoogleFonts.lato().fontFamily,
          ),
          debugShowCheckedModeBanner: false,
          routes: {
            "/":(context) => LoginPage(),
            MyRoutes.loginRoute:(context) => LoginPage(),
            MyRoutes.homeRoute:(context) => HomePage(),
          },
          
      );
  }
}
