import 'package:flutter/material.dart';

AB(text) {
  return AppBar(
    backgroundColor: Colors.deepPurple,
    title: Center(
      child: Text(
        "$text KNOWLEDGE CHECK QUIZ",
        style: TextStyle(
          color: Colors.white,
          fontSize: 35.0,
          fontWeight: FontWeight.bold,
          letterSpacing: 5.0,
          wordSpacing: 10.0,
        ),
      ),
    ),
  );
}
