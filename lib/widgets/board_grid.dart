import 'package:flutter/material.dart';
import 'package:puzzle_a_day/widgets/board_tile.dart';

class BoardGrid extends StatelessWidget {
  const BoardGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(color: Colors.deepPurpleAccent),
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 7,
          mainAxisSpacing: 2,
          crossAxisSpacing: 2,
          childAspectRatio: 1,
        ),
        itemCount: 49, // our 7x7 grid
        itemBuilder: (context, index) {
          // to calculate the position of x we'll need to retrive the remaing
          // value of our index divided by the max grid size, this being 7
          final int x = index % 7;

          // to calculate the position of y we'll need to increment the value for
          // each 7 items starting on 0. here we use a truncating divising operator
          // represented by a ~/ b or simply by casting the value as int
          final int y = (index / 7).toInt();
          return BoardTile(x: x, y: y);
        },
      ),
    );
  }
}
