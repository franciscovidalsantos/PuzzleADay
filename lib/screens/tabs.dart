import 'package:flutter/material.dart';
import 'package:puzzle_a_day/screens/home.dart';
import 'package:puzzle_a_day/screens/progression.dart';
import 'package:puzzle_a_day/screens/puzzle.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  int _selectedPageIndex = 1;
  void _selectedPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: false,
      appBar: AppBar(
        title: Text(
          "Puzzle a Day",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blueGrey,
        actions: [
          IconButton(
            icon: Icon(Icons.settings, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: IndexedStack(
        index: _selectedPageIndex,
        children: [PuzzleScreen(), HomeScreen(), ProgressionScreen()],
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.white60,
        unselectedLabelStyle: TextStyle(color: Colors.white60),
        selectedItemColor: Colors.white,
        selectedLabelStyle: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
        backgroundColor: Colors.blueGrey,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.question_mark),
            label: "Puzzle",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart),
            label: "Progression",
          ),
        ],
        currentIndex: _selectedPageIndex,
        onTap: _selectedPage,
      ),
    );
  }
}
