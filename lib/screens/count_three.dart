import 'package:flutter/material.dart';

class CountThreePage extends StatefulWidget {
  final String title;
  CountThreePage({this.title});

  @override
  _CountThreePageState createState() => _CountThreePageState();
}

class _CountThreePageState extends State<CountThreePage> {
  int _counter = 0;
  bool _hideShowFloatingActionButton = false;

  //Increment by 3
  void _incrementCounter() {
    setState(() {
      _counter = _counter + 3;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title), centerTitle: true),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Increment by 3'),
          Text(
            '$_counter',
            style: Theme.of(context).textTheme.headline6,
          ),
        ],
      )),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          //Show/Hide FloatingAction Button
          Switch(
            focusColor: Colors.white,
            value: _hideShowFloatingActionButton,
            onChanged: (val) {
              setState(
                () {
                  _hideShowFloatingActionButton = val;
                },
              );
            },
          ),

          //Display FloatingActionButton
          !_hideShowFloatingActionButton
              ? FloatingActionButton.extended(
                  onPressed: _incrementCounter,
                  tooltip: 'Increment',
                  label: Text('Increment me [+3]'),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(15.0),
                    ),
                  ),
                )
              : SizedBox(width: 130),
        ],
      ),
    );
  }
}
