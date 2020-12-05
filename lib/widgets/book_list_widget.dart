import 'package:biblioteca_digital_brasileira/tile/book_tile.dart';
import 'package:flutter/material.dart';

Widget createBookList(BuildContext context) {
  return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return BookTile();
      });
}
