import 'package:flutter/material.dart';
import 'package:travel/widgets/drawer.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App", textAlign: TextAlign.center),
      ),
      body: Center(
        child: Container(
          child: Text(context.runtimeType.toString()),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
