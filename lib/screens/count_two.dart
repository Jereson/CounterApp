import 'package:flutter/material.dart';

class CountTwoPage extends StatefulWidget {
  final String title;
  CountTwoPage({this.title});

  @override
  _CountTwoPageState createState() => _CountTwoPageState();
}

class _CountTwoPageState extends State<CountTwoPage> {
  bool _hideShowFloatingActionButton = false;
  int _counter = 0;

  //Increment by 2
  void _incrementCounter() {
    setState(() {
      _counter = _counter + 2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Increment by 2'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline6,
            ),
          ],
        ),
      ),
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
                  label: Text('Increment me [+2]'),
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
