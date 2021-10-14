import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Screen',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

String usernameText = "";
String passText = "";

class MyHomePage extends StatelessWidget {
  final String title;

  const MyHomePage({required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // The title text which will be shown on the action bar
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(border: OutlineInputBorder(), labelText: "Username"),
              onChanged: (textVal) {
                usernameText = textVal;
              },
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              decoration: InputDecoration(border: OutlineInputBorder(), labelText: "Password"),
              onChanged: (passVal) {
                passText = passVal;
              },
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              child: Text("LOGIN"),
              onPressed: () {
                print('User ' + '$usernameText' + ' with Password ' + '$passText' + ' is trying to login.');
              },
            ),
          ],
        ),
      ),
    );
  }
}
