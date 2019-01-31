import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:io';
import 'NewReptile.dart';

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
          //Remove padding - adds color to the top bit of the box
          padding: EdgeInsets.zero,
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

      //Right side drawer for management.
      endDrawer: Drawer(
        //Create a list, containing tiles for interactivity.
        child: ListView(
          //Remove padding - adds color to the top bit of the box
          padding: EdgeInsets.zero,
          children: <Widget>[
            //Set the header - clearly for management of the reptiles. (TODO: Change this depending on context?)
            DrawerHeader(
              child: Text('Management:')
              ),
            ListTile(
              title: Text('Add a reptile'),
              onTap: () {
                //Close the drawer, navigate to new reptile page.
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context) => NewReptile()),
                );
              },
            )
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
