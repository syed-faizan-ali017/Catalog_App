import 'package:flutter/material.dart';
import 'package:travel/pages/homepage.dart';
import 'package:travel/utilis/routes.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "assets/images/login_img.png",
              fit: BoxFit.cover,
              height: 500,
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              "Welcome! Login",
              style: TextStyle(
                fontSize: 24,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),

// Text fields
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 20, horizontal: 32.0),
              child: Form(
                child: Column(
                  children: [
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        labelText: 'Email',
                        hintText: 'Username',
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
                      obscureText: true,
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
                      height: 40,
                    ),

                    //Button login
                    // ElevatedButton(
                    // child: Text('Login'),
                    // style: TextButton.styleFrom(
                    // minimumSize: Size),
                    //   onPressed: () {
                    //print("Welcome Back Faizan");
                    //    },
                    // ),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: ElevatedButton(
                        child: Text("Login"),
                        style: TextButton.styleFrom(minimumSize: Size(150, 40)),
                        //minWidth: double.infinity,
                        onPressed: () {
                          Navigator.pushNamed(context, MyRoutes.homeRoute);
                          //print("Welcome Back Faizan");
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
