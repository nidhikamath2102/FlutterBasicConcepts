import 'package:flutter/material.dart';
void main() {
  runApp(
    new MyApp()
  );
}


class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String text = "";

  @override
  void initState() {
    text = "Click here to change text";
    super.initState();
  }

  void changeText(){
    setState(() {
      text = "Hello Flutter";
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("Basic Concepts"),
          //centerTitle: true,
          elevation: 10.0,
          toolbarOpacity: 0.6,
          titleSpacing: 50.0,
          leading: new Icon(Icons.arrow_back),
          actions:[
            new IconButton(icon: new Icon(Icons.file_download), onPressed: (){
              setState(() {
                text = "Download Icon from menu clicked";
              });
            }),
            new IconButton(icon: new Icon(Icons.send), onPressed: (){
              setState(() {
                text = "Send Icon from menu clicked";
              });
            })
          ],
        ),
        body: new Center(
          child: new RaisedButton(onPressed: (){
            changeText();
          },
          child: new Text(text),),

        ),
      ),
    );
  }
}


class MyApp1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Flutter Basic Concepts",
      home: new Scaffold(
        body: statelessWidget()
      ),
    );
  }

  statelessWidget() {
    return new Container(
      color:  Colors.blueAccent,
      margin: EdgeInsets.all(10.0),
      child: new Container(
        color: Colors.black26,
        margin: EdgeInsets.all(10.0),
      ),
    );
  }
}

