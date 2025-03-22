import 'package:flutter/material.dart';

class ProgressionScreen extends StatefulWidget {
  const ProgressionScreen({super.key});
  @override
  State<ProgressionScreen> createState() {
    return _ProgressionScreenState();
  }
}

class _ProgressionScreenState extends State<ProgressionScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text("Puzzle Screen"));
  }
}
