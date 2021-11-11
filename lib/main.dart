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
  //this widget here is great for using it again and again
  Widget quoteTemplate(quote){
    return Card(
      margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children:[
            Text(
              quote.text,
              style: TextStyle(
                fontSize: 30.0,
                color: Colors.grey[600]
              ),
            ),
            SizedBox(height:10),
            Text(
              quote.author,
              style: TextStyle(
                fontSize: 15.0,
                color: Colors.yellow[900],
              )
            )
          ]
        ),
      ),
    );
  }

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
          return quoteTemplate(quote);
        }).toList(),
      )
    );
  }
}
