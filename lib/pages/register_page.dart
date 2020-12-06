import 'package:biblioteca_digital_brasileira/pages/login_page.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true, title: Text('Biblioteca Digital Brasileira')),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Icon(
                Icons.person,
                size: 150,
              ),
              TextField(
                decoration: InputDecoration(
                    hintText: 'Usuário', border: OutlineInputBorder()),
              ),
              SizedBox(height: 20),
              TextField(
                  decoration: InputDecoration(
                      hintText: 'Senha', border: OutlineInputBorder())),
              SizedBox(height: 20),
              RaisedButton(
                  child: Text(
                    'Efetuar cadastro',
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Colors.green,
                  onPressed: () {
                    Navigator.of(context).pop();
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
