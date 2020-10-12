import 'package:flutter/material.dart';
void main() {
  runApp(
    new MyApp()
  );
}

class MyApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    new Scaffold(
      appBar: new AppBar(
        title: new Text("Basic Concepts of Flutter"),
        elevation: 5.0,
      ),
      body: new Center(
        child: Text(
          'Hello, world!',
          textDirection: TextDirection.ltr,
        ),
      ),
    );
  }

}
