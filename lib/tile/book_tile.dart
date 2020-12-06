import 'package:biblioteca_digital_brasileira/widgets/book_dialog.dart';
import 'package:flutter/material.dart';

class BookTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Card(
        child: Container(
          color: Colors.grey,
          height: 100.0,
          width: 100.0,
        ),
      ),
      onTap: () {
        bookDialog(context);
      },
    );
  }
}
