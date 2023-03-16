import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel/main.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // FOR IMAGE FROM NETWORK(BROWSER)
    //Image.url(https://browser image)
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,

                accountName: Text(
                  "Faizan Ali",
                  style: TextStyle(color: Colors.white),
                ),
                accountEmail: Text(
                  "decor@gmail.com",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                currentAccountPicture: CircleAvatar(
                    backgroundImage: AssetImage("assets/images/faizan.jpeg")),

                //currentAccountPicture: Image.network(Image.url),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.white,
              ),
              title: Text(
                "Home",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,
              ),
              title: Text(
                "Profile",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.mail,
                color: Colors.white,
              ),
              title: Text(
                "Email",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.phone,
                color: Colors.white,
              ),
              title: Text(
                "Contact",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
