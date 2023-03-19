import 'package:flutter/material.dart';
import 'package:travel/pages/loginpage.dart';
import 'package:travel/pages/homepage.dart';

import 'package:travel/utilis/routes.dart';
import 'package:travel/widgets/Theme.dart';

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
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      initialRoute: MyRoutes.homeRoute,
      routes: {
        // "login": (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => Homepage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => Homepage(),
      },
    );
  }
}
