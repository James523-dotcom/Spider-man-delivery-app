import 'package:flutter/material.dart';
import 'package:spidermanapp2/calls.dart';
import 'package:spidermanapp2/dashboard.dart';
import 'package:spidermanapp2/history.dart';
class dashboardPage extends StatefulWidget {
  const dashboardPage({super.key});

  @override
  State<dashboardPage> createState() => _dashboardPageState();
}

class _dashboardPageState extends State<dashboardPage> {
  int _currentIndex = 0;
  void NavigateBottomBar(int index){
    setState(() {
      _currentIndex = index;
    });
  }
  final List <Widget> _pages = [
    Dashboard(), 
    History(),
    Calls()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _pages[_currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: NavigateBottomBar,
        currentIndex: _currentIndex,
        items: [
        BottomNavigationBarItem(icon: Icon(Icons.home),
        label: "Home"),
         BottomNavigationBarItem(icon: Icon(Icons.history),
        label: "History"),
         BottomNavigationBarItem(icon: Icon(Icons.phone),
        label: "Calls"),
      ],
      selectedItemColor: Colors.red,
      ),
    );
      
  }
}