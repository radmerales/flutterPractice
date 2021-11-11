import 'quote.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: QuoteList(),
));

class QuoteList extends StatefulWidget {
  const QuoteList({Key? key}) : super(key: key);
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  @override

  List<Quote> quotes = [
    Quote(author: 'Oscar Wilde', text: 'Hello'),
    Quote(author: 'Walter White', text: 'bleblo'),
    Quote(author: 'Imelda Marcos', text: 'We didnt'),
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("Awesome Quotes"),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Column(
        //the quotes.map basically goes through the list quotes
        //and does operations based on what's inside the function
        //inside the parenthesis, in this case (quote). is just
        //a variable pointing to each iteration. it can be any
        //arbitrary value
        children: quotes.map((quote){
          return Container(
            child:Text('Author: ${quote.author}, Quote: ${quote.text}'),
            height: 100.0,
          );
        }).toList(),
      )
    );
  }
}
