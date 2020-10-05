import 'package:flutter/material.dart';
import 'package:gridviewlayout/screens/home.dart';

class BottomNav extends StatefulWidget {
  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _currentIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  final List<Widget> _children = [Home()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(child: _children[_currentIndex]),
      bottomNavigationBar: BottomNavigationBar(
        onTap: _onItemTapped,
        selectedItemColor: Colors.orange,
        currentIndex: _currentIndex,
        items: [
          _buildBottomNavigationBarItem(Icon(Icons.home), 'Home'),
          _buildBottomNavigationBarItem(Icon(Icons.category), 'Categories'),
          _buildBottomNavigationBarItem(Icon(Icons.shopping_cart), 'Cart'),
          _buildBottomNavigationBarItem(Icon(Icons.person), 'Account')
        ],
      ),
    );
  }
}

BottomNavigationBarItem _buildBottomNavigationBarItem(Icon icon, String title) {
  return BottomNavigationBarItem(icon: icon, title: Text(title));
}
