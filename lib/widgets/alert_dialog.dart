import 'package:flutter/material.dart';

Future<void> myDialog(context) async {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('Nome do material'),
        content: SingleChildScrollView(
          child: ListBody(
            children: [
              Text('Descrição do material'),
              SizedBox(
                height: 10.0,
              ),
              Text('Efetuar download?')
            ],
          ),
        ),
        actions: [
          TextButton(
            child: Text('Não'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          TextButton(
            child: Text('Sim'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}
