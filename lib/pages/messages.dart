import 'package:flutter/material.dart';
import 'package:flutter_exercise1/widgets/app_drawer.dart';

class Messages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Messages'),
      ),
      drawer: AppDrawer(),
      body: Center(
        child: RaisedButton(
          child: Text('Go back'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
