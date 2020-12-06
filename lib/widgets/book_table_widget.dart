import 'package:biblioteca_digital_brasileira/tile/book_tile.dart';
import 'package:flutter/material.dart';

Widget createBookTable(BuildContext context, AsyncSnapshot snapshot) {
  return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, crossAxisSpacing: 10.0, mainAxisSpacing: 10.0),
      itemCount: 14,
      itemBuilder: (context, index) {
        return BookTile();
      });
}
