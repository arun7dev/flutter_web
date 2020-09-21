import 'package:flutter/material.dart';
import 'package:flutter_web/widgets/appbar.dart';

var score = 0;

class QUIZ1 extends StatefulWidget {
  final text;
  QUIZ1(this.text);
  @override
  _QUIZ1State createState() => _QUIZ1State();
}

class _QUIZ1State extends State<QUIZ1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AB(widget.text),
        body: ListView(
          children: [
            buildColumn(1, "OPTION 1"),
            buildColumn(2, "OPTION 2"),
            buildColumn(3, "OPTION 3"),
          ],
        ));
  }

  Column buildColumn(n, ans) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            //elevation: 30,
            child: Container(
              child: Center(
                child: Text(
                  "QUESTION $n",
                  style: TextStyle(fontSize: 100),
                ),
              ),
              // color: Colors.red,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 500),
          child: Card(
            child: Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        if (ans == "OPTION 1") {
                          score++;
                        }
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.blueAccent),
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Center(
                        child: Text(
                          "OPTION 1",
                          style: TextStyle(fontSize: 50),
                        ),
                      ),
                      //color: Colors.deepPurpleAccent,
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        if (ans == "OPTION 2") {
                          score++;
                        }
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.blueAccent),
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Center(
                        child: Text(
                          "OPTION 2",
                          style: TextStyle(fontSize: 50),
                        ),
                      ),
                      //color: Colors.deepPurpleAccent,
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        if (ans == "OPTION 3") {
                          score++;
                        }
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.blueAccent),
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Center(
                        child: Text(
                          "OPTION 3",
                          style: TextStyle(fontSize: 50),
                        ),
                      ),
                      // color: Colors.deepPurpleAccent,
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        if (ans == "OPTION 4") {
                          score++;
                        }
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.blueAccent),
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Center(
                        child: Text(
                          "OPTION 4",
                          style: TextStyle(fontSize: 50),
                        ),
                      ),
                      //color: Colors.deepPurpleAccent,
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
