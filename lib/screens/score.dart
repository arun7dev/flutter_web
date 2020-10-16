import 'package:flutter/material.dart';

class Score extends StatelessWidget {
  Score(this.s);
  final s;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Text(
            "YOU SCORED : $s",
            style: TextStyle(fontSize: 100),
          ),
        ),
      ),
    );
  }
}
