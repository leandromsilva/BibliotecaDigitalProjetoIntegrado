import 'package:biblioteca_digital_brasileira/delegates/search_data.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                  labelText: 'Pesquisa', border: OutlineInputBorder()),
              autofocus: true,
            )
          ],
        ));
  }
}
