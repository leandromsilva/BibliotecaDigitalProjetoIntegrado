import 'package:flutter/material.dart';

class CategoryPage extends StatefulWidget {
  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Card(
              child: ListTile(
            title: Text('Português'),
            leading: Icon(Icons.book),
          )),
          Card(
              child: ListTile(
                  title: Text('Matemática'), leading: Icon(Icons.calculate))),
          Card(
              child: ListTile(
                  title: Text('Física'), leading: Icon(Icons.calculate))),
          Card(
              child:
                  ListTile(title: Text('História'), leading: Icon(Icons.book))),
          Card(
              child: ListTile(
                  title: Text('Literatura'), leading: Icon(Icons.book))),
        ],
      ),
    );
  }
}
