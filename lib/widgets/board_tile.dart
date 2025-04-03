import 'package:flutter/material.dart';
import 'package:puzzle_a_day/models/tile.dart';

class BoardTile extends StatelessWidget {
  const BoardTile({super.key, required this.tile});
  final Tile tile;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: tile.color),
      child: Center(
        child: Text(
          tile.text,
          style: TextStyle(
            color:
                tile.type == TileType.month
                    ? Colors.blue.shade800
                    : Colors.green.shade800,
          ),
        ),
      ),
    );
  }
}
