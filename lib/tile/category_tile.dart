import 'package:flutter/material.dart';

class CategoryTile extends StatelessWidget {
  final String name;
  final IconData icon;

  CategoryTile({Key key, this.name, this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        child: ListTile(
      title: Text(name),
      leading: Icon(icon),
    ));
  }
}
