import 'package:biblioteca_digital_brasileira/tile/category_tile.dart';
import 'package:biblioteca_digital_brasileira/widgets/book_list_widget.dart';
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
          CategoryTile(name: 'Português', icon: Icons.book),
          //  Expanded(child: createBookList(context)),
          CategoryTile(name: 'Matemática', icon: Icons.calculate),
          //  Expanded(child: createBookList(context)),
          CategoryTile(name: 'Física', icon: Icons.calculate),
          //  Expanded(child: createBookList(context)),
          CategoryTile(name: 'História', icon: Icons.book),
          //  Expanded(child: createBookList(context)),
          CategoryTile(name: 'Literatura', icon: Icons.book),
          //  Expanded(child: createBookList(context)),
        ],
      ),
    );
  }
}
