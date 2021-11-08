import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Scaffold(
    appBar: AppBar(
      title: Text('Penk',),
      centerTitle: true,
      backgroundColor: Colors.pink[500],
    ),
    body: Center(
      child: Text(
        'hello ninjas',
        style: TextStyle(
        fontSize: 20.0,
        fontWeight: FontWeight.bold,
      )),
    ),
    floatingActionButton: FloatingActionButton(
      child: Text('Tara'),
      backgroundColor: Colors.pink[400],
      onPressed: (){},
    ),
  ),
));