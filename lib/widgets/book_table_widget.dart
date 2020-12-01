import 'package:flutter/material.dart';

Widget createBookTable(BuildContext context, AsyncSnapshot snapshot) {
  return GridView.builder(
      padding: EdgeInsets.all(10.0),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, crossAxisSpacing: 20.0, mainAxisSpacing: 20.0),
      itemCount: 8,
      itemBuilder: (context, index) {
        return GestureDetector(
          child: Container(color: Colors.grey),
        );
      });
}