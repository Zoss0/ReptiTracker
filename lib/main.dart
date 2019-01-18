import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:io';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ReptiTracker',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.title,),
      ),

      //Drawer for left hand side menu
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero, //Remove padding - adds color to the top bit of the box
          children: <Widget>[
            DrawerHeader(
              child: Text('Reptiles:'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            //TODO: Menu list of reptiles hard codes until I/O of sqllite
            ListTile(
              title: Text('Reptile 1'),
              onTap: () {
                //Do we want to close the drawer or not? Disable for no, enable yes - temp debug code
                Navigator.pop(context);
              },
            ),
          ],
        )
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      ),
    );
  }
}
