import 'package:biblioteca_digital_brasileira/pages/login_page.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Biblioteca Digital Brasileira',
        theme: ThemeData(
          primarySwatch: Colors.green,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: LoginPage());
  }
}

void main() async {
  runApp(MyApp());
  FirebaseFirestore.instance
      .collection('material')
      .doc()
      .set({'texto': 'teste', 'de': 'teste', 'leitura': 'teste'});
}
