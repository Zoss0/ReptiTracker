import 'package:flutter/material.dart';

class NewReptile extends StatefulWidget {
  @override
  _NewReptileState createState() => _NewReptileState();
}

class _NewReptileState extends State<NewReptile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold (appBar: AppBar(
      title: Text('Test second screen')
      ),
    );
  }
}