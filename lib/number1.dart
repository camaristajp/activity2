import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      title: 'Flutter Hello World',
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // A widget which will be started on application startup
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  const MyHomePage({@required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // The title text which will be shown on the action bar
        title: Text("Text Widget Sample"),
      ),
      body: Center(
          child: Column(children: <Widget>[
        Container(
            alignment: Alignment.center,
            child: Text('Demon Slayer Season 2',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.italic,
                  letterSpacing: 8,
                  wordSpacing: 15,
                  backgroundColor: Colors.orange,
                ))),
        Container(
            alignment: Alignment.center,
            child: Image.network(
              'https://cdn.epicstream.com/assets/uploads/ckeditor/images/1628702059_demonslayer.jpg',
              height: 180,
              width: 180,
            )),
        Container(
            alignment: Alignment.center,
            child: Text(
              'Edited by:',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 14,
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontStyle: FontStyle.normal,
                letterSpacing: 4,
                wordSpacing: 15,
              ),
              overflow: TextOverflow.clip,
              softWrap: true,
            )),
        Container(
            alignment: Alignment.center,
            child: Text(
              'Elaisha Diana & Julliane Pearl Camarista',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 12,
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontStyle: FontStyle.normal,
                letterSpacing: 4,
                wordSpacing: 15,
              ),
              overflow: TextOverflow.clip,
              softWrap: true,
            )),
      ])),
    );
  }
}
