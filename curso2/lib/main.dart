import 'package:curso2/database/app_database.dart';
import 'package:curso2/models/contact.dart';
import 'package:curso2/screens/contact_form.dart';
import 'package:curso2/screens/contacts_list.dart';
import 'package:curso2/screens/dashboard.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(ByteBankApp());
  save(Contact('Jeffe', 1000, 1)).then((id) {
    findAll().then((contacts)=>debugPrint(contacts.toString()));
  });
    
}

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
