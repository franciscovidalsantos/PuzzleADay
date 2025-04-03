import 'package:flutter/material.dart';

enum TileType { month, day, empty }

class Tile {
  final int x;
  final int y;
  final TileType type;
  final Color color;
  final String text;

  const Tile({
    required this.x,
    required this.y,
    required this.type,
    required this.color,
    required this.text,
  });

  factory Tile.create(int x, int y) {
    final type = _determineType(x, y);
    return Tile(
      x: x,
      y: y,
      type: type,
      color: _getColor(type),
      text: _getText(x, y, type),
    );
  }

  static TileType _determineType(int x, int y) {
    if (y < 2) return x < 6 ? TileType.month : TileType.empty;
    if (y < 6) return TileType.day;
    return x < 3 ? TileType.day : TileType.empty;
  }

  static Color _getColor(TileType type) {
    return switch (type) {
      TileType.month => Colors.blue.shade200,
      TileType.day => Colors.green.shade200,
      TileType.empty => Colors.grey.shade400,
    };
  }

  static String _getText(int x, int y, TileType type) {
    String text = "";
    switch (type) {
      case TileType.day:
        text = _getDayLabel(x, y);
        break;
      case TileType.month:
        text = _getMonthLabel(x, y);
        break;
      case TileType.empty:
        text = "";
        break;
    }
    return text;
  }

  static String _getMonthLabel(int x, int y) {
    final monthIndex = y * 6 + x;
    return _months[monthIndex % 12];
  }

  static String _getDayLabel(int x, int y) {
    final dayNumber = (y - 2) * 7 + x + 1;
    return dayNumber.toString();
  }

  static const _months = [
    'Jan',
    'Feb',
    'Mar',
    'Apr',
    'May',
    'Jun',
    'Jul',
    'Aug',
    'Sep',
    'Oct',
    'Nov',
    'Dec',
  ];
}
