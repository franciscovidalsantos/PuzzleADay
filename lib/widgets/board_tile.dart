import 'package:flutter/material.dart';

class BoardTile extends StatelessWidget {
  const BoardTile({super.key, required this.x, required this.y});
  final int x;
  final int y;

  Color get tileColor {
    if (y < 2) {
      // first two rows
      return x < 6 ? Colors.blue : Colors.grey;
    } else if (y < 6) {
      // middle four rows
      return Colors.blue[200]!;
    } else {
      // last row
      return x < 3 ? Colors.blue[200]! : Colors.grey;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: tileColor),
      child: Center(child: Text("($x,$y)")),
    );
  }
}
