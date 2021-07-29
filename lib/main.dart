import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:study_app/navg.dart';

void main()
{
  runApp(Menu());
}
class App extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("STUDY APP"),
        ),

      ),
    );
  }
}
