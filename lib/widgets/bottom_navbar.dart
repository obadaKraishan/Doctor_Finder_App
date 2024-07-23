import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Color(0xFF42a5f5),
        borderRadius: BorderRadius.circular(50),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10,
            spreadRadius: 1,
          ),
        ],
      ),
      child: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white.withOpacity(0.7),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, size: 30), // Increase icon size
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today, size: 30), // Increase icon size
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, size: 30), // Increase icon size
            label: '',
          ),
        ],
      ),
    );
  }
}
