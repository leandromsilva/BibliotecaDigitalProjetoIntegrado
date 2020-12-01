import 'package:flutter/material.dart';

class DownloadsPage extends StatefulWidget {
  @override
  _DownloadsPageState createState() => _DownloadsPageState();
}

class _DownloadsPageState extends State<DownloadsPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: [
            Card(
                child: ListTile(
                    title: Text('Exemplo'), leading: Icon(Icons.book))),
            Card(
                child: ListTile(
                    title: Text('Exemplo'), leading: Icon(Icons.book))),
          ],
        ));
  }
}
