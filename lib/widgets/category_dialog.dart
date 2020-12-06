import 'package:biblioteca_digital_brasileira/widgets/book_table_widget.dart';
import 'package:flutter/material.dart';

Future<void> categoryDialog(context, String name) async {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text(name),
        content: Container(
          width: 500,
          height: 700,
          child: FutureBuilder(
            builder: (context, snapshot) {
              return createBookTable(context, snapshot);
            },
          ),
        ),
        actions: [
          TextButton(
            child: Text('Sair'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}
