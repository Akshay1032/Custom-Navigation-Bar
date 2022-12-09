import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const String _heading = 'Custom Navigation Bar';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _heading,
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _currentSport = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 50, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Tennis',
      style: optionStyle,
    ),
    Text(
      'Basketball',
      style: optionStyle,
    ),
    Text(
      'Football',
      style: optionStyle,
    ),
    Text(
      'Cricket',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _currentSport = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.grey,
      appBar: AppBar(
        title: const Text('Sports',
        style: TextStyle(fontSize:30)),
        centerTitle: true,
      ),
      body: Center(
        child: _widgetOptions.elementAt(_currentSport),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.sports_tennis),
            label: 'Tennis',
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.sports_basketball),
            label: 'Basketball',
            backgroundColor: Colors.yellow,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.sports_soccer),
            label: 'Football',
            backgroundColor: Colors.cyan,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.sports_cricket),
            label: 'Cricket',
            backgroundColor: Colors.red,
          ),
        ],
        currentIndex: _currentSport,
        selectedItemColor: Colors.black,
        selectedFontSize: 20,
        unselectedFontSize: 10,
        onTap: _onItemTapped,
      ),
    );
  }
}
