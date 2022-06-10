import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sample_project_1/screenAccounts.dart';
import 'package:sample_project_1/screen_main.dart';
import 'package:sample_project_1/screen_search.dart';

class ScreenHome extends StatefulWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}

int _selectedIndex = 0;

final _pages = [
  ScreenMain(),
  ScreenSearch(),
  ScreenAccounts(),
];

class _ScreenHomeState extends State<ScreenHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap:(newIndex){
          setState(() {
            _selectedIndex = newIndex;
          });
          print(newIndex);
        },
        items:const [
        BottomNavigationBarItem(icon: Icon(Icons.home) , label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Account')

      ]),
    );
  }
}