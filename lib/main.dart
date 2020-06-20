import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Counter(),
  ));
}


class Counter extends StatefulWidget {
  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {

  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text("Counter"),
      ),
      body: Column(
        children: <Widget>[
          Center(
            child: Text('$counter', style: TextStyle(
              fontSize: 80,
              color: Colors.indigo,
            ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              RaisedButton(
                onPressed: () {
                  setState(() {
                    counter++;
                  });
                },
                child: Icon(Icons.add,
                color: Colors.deepOrange),
              ),
              RaisedButton(
                onPressed: () {
                  setState(() {
                    counter--;
                  });
                },
                child: Icon(Icons.remove,
                color: Colors.deepOrange,),
              ),
            ],
          ),
          FloatingActionButton.extended(
            onPressed: () {
              setState(() {
                counter = 0;
              });
            },
            label: Text("Reset"),
            backgroundColor: Colors.blueGrey,
          ),
        ],
    ),
    );
  }
}
