import 'package:biblioteca_digital_brasileira/widgets/book_table_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      child: Column(
        children: [
          Expanded(
            child: FutureBuilder(
              builder: (context, snapshot) {
                switch (snapshot.connectionState) {
                  case ConnectionState.waiting:
                  case ConnectionState.none:
                    return createBookTable(context, snapshot);
                  /*return Container(
                      alignment: Alignment.center,
                      child: CircularProgressIndicator(
                        valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
                        strokeWidth: 5.0,
                      ),
                    );*/
                  default:
                    if (snapshot.hasError)
                      return Center(
                        child: Text(
                            'Não foi possível se comunicar com o banco de dados'),
                      );
                    else
                      return createBookTable(context, snapshot);
                }
              },
            ),
          )
        ],
      ),
    );
  }
}
