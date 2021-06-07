import 'package:cart_bloc/product/item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Catalog extends StatefulWidget {
  const Catalog({Key key}) : super(key: key);

  @override
  _CatalogState createState() => _CatalogState();
}

class _CatalogState extends State<Catalog> {
  List<Item> _list = itemList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Catalog'),
        actions: <Widget>[
          IconButton(onPressed: () {}, icon: Icon(Icons.archive))
        ],
      ),
      body: ListView(
        children: _list.map((item) => _buildItem(item)).toList(),
      ),
    );
  }

  Widget _buildItem(Item item) {
    return Padding(
      child: ListTile(
        title: Text(
          item.title,
          style: TextStyle(fontSize: 30),
        ),
        subtitle: Text('${item.price}'),
        trailing: IconButton(
          icon: Icon(Icons.check),
          onPressed: () {},
        ),
      ),
      padding: EdgeInsets.all(8),
    );
  }
}
