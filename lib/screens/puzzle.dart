import 'package:flutter/material.dart';
import 'package:puzzle_a_day/widgets/board_grid.dart';

class PuzzleScreen extends StatefulWidget {
  const PuzzleScreen({super.key});
  @override
  State<PuzzleScreen> createState() {
    return _PuzzleScreenState();
  }
}

class _PuzzleScreenState extends State<PuzzleScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(child: BoardGrid());
  }
}
