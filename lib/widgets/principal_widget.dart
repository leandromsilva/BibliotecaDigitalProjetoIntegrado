import 'package:biblioteca_digital_brasileira/delegates/search_data.dart';
import 'package:biblioteca_digital_brasileira/pages/category_page.dart';
import 'package:biblioteca_digital_brasileira/pages/downloads_page.dart';
import 'package:biblioteca_digital_brasileira/pages/home_page.dart';
import 'package:flutter/material.dart';

class HomeWidget extends StatefulWidget {
  HomeWidget({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomeWidget> {
  int _currentIndex = 0;

  final _label = [
    'Destaques',
    'Materiais baixados',
    'Pesquisar por categoria',
  ];

  final _pages = [
    HomePage(),
    DownloadsPage(),
    CategoryPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          actions: [
            IconButton(
                icon: Icon(Icons.search),
                onPressed: () {
                  showSearch(context: context, delegate: SearchData());
                })
          ],
          title: Text(
            _label[_currentIndex],
          )),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Ínicio'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.arrow_circle_down_sharp,
              ),
              label: "Downloads"),
          BottomNavigationBarItem(
              icon: Icon(Icons.category_rounded), label: "Categorias"),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
