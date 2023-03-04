import 'package:flutter/material.dart';
import 'package:travel/pages/loginpage.dart';
import 'package:travel/pages/homepage.dart';

void main() {
  runApp(MyApp(
      //debugShowCheckedModeBanner: false,
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
      theme: ThemeData(primarySwatch: Colors.deepOrange),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      // initialRoute: 'loginPage',
      //routes:(
      //  {'home': (context) => Homepage()};
      // {'login': (context) => loginPage()}
      initialRoute: "/login",
      routes: {
        "/": (context) => loginPage(),
        "/home": (context) => Homepage(),
        "/login": (context) => LoginPage()
      },
    );
  }
}
