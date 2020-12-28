import 'package:flutter/material.dart';
import 'package:counter_text/screens/count_one.dart';
import 'package:counter_text/screens/count_two.dart';
import 'package:counter_text/screens/count_three.dart';

class BottomNavWidget extends StatefulWidget {
  @override
  _BottomNavWidgetState createState() => _BottomNavWidgetState();
}

class _BottomNavWidgetState extends State<BottomNavWidget> {
  int _selectedPage = 0;

  //Define the page change tap
  void _pageChanges(int pageIndex) {
    setState(() {
      _selectedPage = pageIndex;
    });
  }

  TextStyle _itemStyle = TextStyle(color: Colors.black);

  //List of Pages
  static List<Widget> _pages = [
    CountOnePage(
      title: 'Counter One',
    ),
    CountTwoPage(
      title: 'Counter Two',
    ),
    CountThreePage(
      title: 'Counter Three',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Call List of pages
      body: _pages.elementAt(_selectedPage),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: true,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.black,
        unselectedLabelStyle: _itemStyle,
        currentIndex: _selectedPage,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.filter_1),
            title: Text('Count1'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.filter_2),
            title: Text('Count2'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.filter_3),
            title: Text('Count3'),
          ),
        ],
        onTap: _pageChanges,
      ),
    );
  }
}
