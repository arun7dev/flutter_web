import 'package:flutter/material.dart';
import 'package:flutter_web/screens/credentials.dart';
import 'package:flutter_web/screens/quiz.dart';
import 'package:flutter_web/widgets/appbar.dart';

void main() {
  runApp(WebApp());
}

class WebApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Web App',
      home: QUIZ1('IEM'),
    );
  }
}

class Quiz extends StatefulWidget {
  @override
  _QuizState createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AB("INM"),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            buildRaisedButton("IEM"),
            buildRaisedButton("PRODUCT SUPPORT"),
            buildRaisedButton("MONITORING")
          ],
        ),
      ),
    );
  }

  RaisedButton buildRaisedButton(text) {
    return RaisedButton(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18.0),
          side: BorderSide(color: Colors.deepPurpleAccent)),
      textTheme: ButtonTextTheme.accent,
      color: Colors.white,
      hoverElevation: 20.0,
      hoverColor: Colors.black,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          text,
          style: TextStyle(
              color: Colors.deepPurpleAccent,
              fontWeight: FontWeight.bold,
              fontSize: 70.0,
              letterSpacing: 5.0),
        ),
      ),
      onPressed: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => Credentials(text)));
      },
    );
  }
}
