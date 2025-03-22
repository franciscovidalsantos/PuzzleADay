import 'package:flutter/material.dart';
import 'package:puzzle_a_day/screens/tabs.dart';

void main() {
  runApp(const PuzzleADay());
}

class PuzzleADay extends StatelessWidget {
  const PuzzleADay({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: TabsScreen());
  }
}
