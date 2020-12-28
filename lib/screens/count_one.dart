import 'package:flutter/material.dart';

class CountOnePage extends StatefulWidget {
  final String title;
  CountOnePage({Key key, this.title}) : super(key: key);

  @override
  _CountOnePageState createState() => _CountOnePageState();
}

class _CountOnePageState extends State<CountOnePage> {
  int _counter = 0;
  bool _hideShowFloatingActionButton = false;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Increment by 1:',
            ),
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
                  label: Text('Increment me'),
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
