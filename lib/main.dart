import 'package:flutter/material.dart';
//import 'package:travel/login.dart';
import 'package:travel/pages/homepage.dart';

//void main() {
// runApp(MaterialApp(
//debugShowCheckedModeBanner: false,
//   initialRoute: 'login',
//  routes: {'login': (context) => Mylogin()},
// ));
//}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
  }
}
