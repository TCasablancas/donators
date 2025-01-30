import 'package:donators/views/home/home_view.dart';
import 'package:flutter/material.dart';

class MainBottomNavigation extends StatefulWidget {
  @override
  _MainBottomNavigationState createState() => _MainBottomNavigationState();
}

class _MainBottomNavigationState extends State<MainBottomNavigation> {
  int _selectedIndex = 0;

  final List<Widget> items = [
    const HomeView(),
    const HomeView(),
    const HomeView(),
  ];

  void itemClicked(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: items[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: itemClicked,
        items: const <BottomNavigationBarItem> [
          BottomNavigationBarItem(
            icon: Icon(Icons.maps_home_work_rounded),
            label: 'início',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.rule_rounded),
            label: 'IMC',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_hospital_rounded),
            label: 'dados',
          ),
        ],
        type: BottomNavigationBarType.fixed,
        elevation: 0.0,
        backgroundColor: const Color.fromRGBO(246, 250, 250, 0.96),
      ),
    );
  }
}