import 'package:flutter/material.dart';
import 'package:flutter_exercise1/pages/messages.dart';
import 'package:flutter_exercise1/pages/profile.dart';
import 'package:flutter_exercise1/widgets/app_drawer.dart';
import 'pages/settings.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Navigation and Drawer',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Navigation and Drawer'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;

  MyHomePage({Key key, this.title}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title)
      ),
      drawer: AppDrawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("App 1"),
            RaisedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Messages()),
                );
              }, 
              child: Text('Go to Messages'),
              
            ),
            RaisedButton(
              onPressed: () {
                Navigator.push(
                  context, 
                  MaterialPageRoute(builder: (context) => Profile()));
              },
              child: Text('Go to Profile'),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.push(
                  context, 
                  MaterialPageRoute(builder: (context) => Settings()));
              },
              child: Text('Go to Settings'),
            ),
          ],
        ),
      )
    );
  }
}


