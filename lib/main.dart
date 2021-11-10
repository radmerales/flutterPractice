import 'dart:ui';

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Home(),
));

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  int counter = 0;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          child: Text('JobFinder'),
          padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
        ),
        backgroundColor: Colors.black,
        bottomOpacity: 0.0,
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
            setState((){
              //this setState() is used to refresh the state, you should
              //do ur variable changes or property changes inside this function
              //so that it will be reflected "live" on the app
              //Not doing this will require you to hot reload the app
              //to see any changes u did, and have it applied to the UI
              counter++;
            });
          },
        child: Icon(Icons.add),
        backgroundColor: Colors.black,
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  color: Colors.black,
                ),
              ),
              Expanded(
                flex: 6,
                child: Container(
                  color: Colors.blueGrey[50],
                ),
              )
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(30,0,0,0),
                child: RichText(
                  text: TextSpan(
                    style: TextStyle(color: Colors.white, fontSize: 20.0),
                    children: <TextSpan>[
                      TextSpan(
                        text: "Hello Person.\n",
                        style: TextStyle(fontSize: 15.0),
                      ),
                      TextSpan(
                        text: "Find the right job for you.",
                        style: TextStyle(fontWeight: FontWeight.bold, height: 1.4),
                      )
                    ]
                  )
                ),
              ),
              Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.fromLTRB(30, 20, 30, 20),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      width: 400.0,
                      height: 160.0,
                      child: Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              RichText(
                                text: TextSpan(
                                  style: TextStyle(color: Colors.black),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: "Data Scientist\n",
                                      style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, height: 1.4),
                                    ),
                                    TextSpan(
                                      text: "LinkedIn",
                                      style: TextStyle(color: Colors.yellow[800], fontWeight: FontWeight.bold, fontSize: 15, height: 1.5),
                                    ),
                                  ]
                                  )
                              ),
                            ],
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(0, 5, 5, 10),
                            child: Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.fromLTRB(9,9,9,9),
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.all(Radius.circular(20))
                                  ),
                                  child: Text(counter.toString(), style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                                ),
                              ],
                            ),
                          )
                        ],
                      )
                    ),
                    Container(
                      color: Colors.blue,
                    ),
                  ],
                )
              )
            ],
          )
        ],
      ),
    );
  }
}
