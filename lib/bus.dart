import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:english_words/english_words.dart' as prefix0;
import 'package:english_words/english_words.dart';
import 'package:english_words/english_words.dart' as prefix0;
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:flutter_app1/bus.dart';

class Bus extends StatefulWidget {
  var _list;

  Bus(list) {
    _list = list;
  }

  @override
  State<StatefulWidget> createState() {
    return new BusState(_list);
  }
}

class BusState extends State<Bus> {
  final _biggerFont = const TextStyle(fontSize: 18.0);
  var _list = new Set<WordPair>(); // 这里需要初始化，两个var参数传输过程中会有状态丢失

  BusState(list) {
    _list = list;
  }

  @override
  Widget build(BuildContext context) {
    final tiles = _list.map(
      (pair) {
        return new ListTile(
          title: new Text(
            pair.asPascalCase,
            style: _biggerFont,
          ),
        );
      },
    );
    final divided = ListTile.divideTiles(
      context: context,
      tiles: tiles,
    ).toList();
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Saved Suggestions'),
      ),
      body: new ListView(children: divided),
    );
  }
}
