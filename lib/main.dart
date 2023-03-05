import 'package:flutter/material.dart';
import 'package:travel/pages/loginpage.dart';
import 'package:travel/pages/homepage.dart';
//import 'package:google_fonts/google_fonts.dart';
import 'package:travel/utilis/routes.dart';

void main() {
  runApp(MyApp(
      //initialRoute: 'login',
//  routes: {'login': (context) => Mylogin()},
      ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        //fontFamily: GoogleFonts.lato().fontFamily,
        //primaryTextTheme: GoogleFonts.latoTextTheme()
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      initialRoute: "login",
      routes: {
        "login": (context) => LoginPage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => Homepage(),
      },
    );
  }
}
