import 'package:flutter/material.dart';

void login() {
  runApp(const Mylogin());
}

class Mylogin extends StatefulWidget {
  const Mylogin({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  _MyloginState createState() => _MyloginState();
}

class _MyloginState extends State<Mylogin> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
              //padding: EdgeInsets.only(left: 35, top: 130),
              child: Text(
            'Welcome Back',
            style: TextStyle(
                color: Colors.orange,
                fontSize: 33,
                fontWeight: FontWeight.bold),
          )),
          Text(
            'Login To Plan Trip',
            style: TextStyle(
                fontSize: 33,
                color: Colors.orange,
                fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30),
            child: Form(
              child: Column(children: [
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    hintText: 'Enter email',
                    prefixIcon: Icon(Icons.email),
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (String value) {},
                  validator: (value) {
                    return value!.isEmpty ? 'Please enter email' : null;
                  },
                ),
                SizedBox(
                  height: 30,
                ),
                TextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    hintText: 'Enter Password',
                    prefixIcon: Icon(Icons.password),
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (String value) {},
                  validator: (value) {
                    return value!.isEmpty ? 'Please enter password' : null;
                  },
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: MaterialButton(
                    minWidth: double.infinity,
                    onPressed: () {},
                    child: Text('Login'),
                    color: Colors.orange,
                    textColor: Colors.white,
                  ),
                ),
              ]),
            ),
          ),
        ],
      ),
    ));
  }
}
