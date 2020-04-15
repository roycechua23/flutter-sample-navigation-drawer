import 'package:flutter/material.dart';
import '../pages/messages.dart';
import '../pages/profile.dart';
import '../pages/settings.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Drawer Header',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                )
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
      builder: (BuildContext context) => Messages()));
              },
              leading: Icon(Icons.message),
              title: Text('Messages'),
            ),
            ListTile(
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
      builder: (BuildContext context) => Profile()));
              },
              leading: Icon(Icons.account_circle),
              title: Text('Profile'),
            ),
            ListTile(
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
      builder: (BuildContext context) => Settings()));
              },
              leading: Icon(Icons.settings),
              title: Text('Settings'),
            ),
          ]
        ),
      );
  }
}