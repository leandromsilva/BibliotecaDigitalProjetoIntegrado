import 'package:biblioteca_digital_brasileira/pages/register_page.dart';
import 'package:biblioteca_digital_brasileira/pages/principal_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
                Icons.book,
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
                    'Login',
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Colors.green,
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => HomeWidget()));
                  }),
              RaisedButton(
                  child: Text(
                    'Cadastro',
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Colors.green,
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => RegisterPage()));
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
