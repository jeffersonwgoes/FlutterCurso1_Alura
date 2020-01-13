import 'package:curso2/screens/contacts_list.dart';
import 'package:curso2/screens/dashboard.dart';
import 'package:flutter/material.dart';


void main() => runApp(ByteBankApp());

class ByteBankApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          buttonTheme: ButtonThemeData(textTheme: ButtonTextTheme.primary),
          accentColor: Colors.blueAccent[700],
          primaryColor: Colors.green[900]),
      home: Dashboard(),
    );
  }
}
