import 'package:flutter/material.dart';

Widget createBookTable(BuildContext context, AsyncSnapshot snapshot) {
  return GridView.builder(
      padding: EdgeInsets.all(10.0),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, crossAxisSpacing: 20.0, mainAxisSpacing: 20.0),
      itemCount: 16,
      itemBuilder: (context, index) {
        return GestureDetector(
          child: Container(height: 10.0, width: 20.0, color: Colors.grey),
        );
      });
}
