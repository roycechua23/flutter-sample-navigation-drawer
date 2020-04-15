import 'package:flutter/material.dart';
import 'package:flutter_exercise1/widgets/app_drawer.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Setting Page"),
      ),
      drawer: AppDrawer(),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Go back!'),
        ),
      ),
    );
  }
}