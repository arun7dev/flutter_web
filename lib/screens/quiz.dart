import 'package:flutter/material.dart';
import 'package:flutter_web/screens/score.dart';
import 'package:flutter_web/widgets/appbar.dart';
import 'package:quiz_view/quiz_view.dart';

var score = 0;
var questionlist = [
  "How many hours are there in a day?",
  "How many days are there in a calendar year (excluding a leap year)?",
  "How many zeros are there in a two-thousand rupee note?",
  " Which festival is also known as “Festival of Lights”?",
  " How many cards are there in a pack of cards?",
];

var opques1 = ["48", "72", "12"];
var opques2 = ["270", "400", "120"];
var opques3 = ["4", "5", "6"];
var opques4 = ["Holi", "Dussehra", "Janmashtami"];
var opques5 = ["53", "54", "56"];

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
            buildquizcard(1, questionlist[0], "24", opques1),
            buildquizcard(2, questionlist[1], "365", opques2),
            buildquizcard(3, questionlist[2], "3", opques3),
            buildquizcard(4, questionlist[3], "Diwali", opques4),
            buildquizcard(5, questionlist[4], "52", opques5),
            FlatButton(
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => Score(score)));
                },
                child: Text("SUBMIT"))
          ],
        ));
  }

//   buildColumn(n, ans) {
//     return Container(
//       width: MediaQuery.of(context).size.width / 2,
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Card(
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(20.0),
//               ),
//               elevation: 30,
//               child: Column(
//                 children: [
//                   Container(
//                     decoration: new BoxDecoration(
//                       borderRadius: BorderRadius.all(Radius.circular(20)),
//                       gradient: new LinearGradient(
//                           colors: [
//                             Colors.deepPurple[100],
//                             Colors.deepPurpleAccent,
//                           ],
//                           begin: const FractionalOffset(0.0, 0.0),
//                           end: const FractionalOffset(1.0, 0.0),
//                           stops: [0.0, 1.0],
//                           tileMode: TileMode.clamp),
//                     ),
//                     child: Center(
//                       child: Text(
//                         "QUESTION $n",
//                         style: TextStyle(fontSize: 100),
//                       ),
//                     ),
//                     // color: Colors.red,
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 500),
//                     child: Column(
//                       children: [
//                         Padding(
//                           padding: const EdgeInsets.symmetric(
//                               horizontal: 10, vertical: 10),
//                           child: GestureDetector(
//                             onTap: () {
//                               colorofop11 = Colors.grey;
//                               setState(() {
//                                 if (ans == "OPTION 1") {
//                                   score++;
//                                 }
//                               });
//                             },
//                             child: Container(
//                               decoration: BoxDecoration(
//                                   color: colorofop11,
//                                   border: Border.all(color: Colors.blueAccent),
//                                   borderRadius:
//                                       BorderRadius.all(Radius.circular(20))),
//                               child: Center(
//                                 child: Text(
//                                   "OPTION 1",
//                                   style: TextStyle(fontSize: 50),
//                                 ),
//                               ),
//                               //color: Colors.deepPurpleAccent,
//                             ),
//                           ),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.symmetric(
//                               horizontal: 10, vertical: 10),
//                           child: GestureDetector(
//                             onTap: () {
//                               setState(() {
//                                 colorofop12 = Colors.grey;
//                                 if (ans == "OPTION 2") {
//                                   score++;
//                                 }
//                               });
//                             },
//                             child: Container(
//                               decoration: BoxDecoration(
//                                   color: colorofop12,
//                                   border: Border.all(color: Colors.blueAccent),
//                                   borderRadius:
//                                       BorderRadius.all(Radius.circular(20))),
//                               child: Center(
//                                 child: Text(
//                                   "OPTION 2",
//                                   style: TextStyle(fontSize: 50),
//                                 ),
//                               ),
//                               //color: Colors.deepPurpleAccent,
//                             ),
//                           ),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.symmetric(
//                               horizontal: 10, vertical: 10),
//                           child: GestureDetector(
//                             onTap: () {
//                               setState(() {
//                                 colorofop13 = Colors.grey;
//                                 if (ans == "OPTION 3") {
//                                   score++;
//                                 }
//                               });
//                             },
//                             child: Container(
//                               decoration: BoxDecoration(
//                                   color: colorofop13,
//                                   border: Border.all(color: Colors.blueAccent),
//                                   borderRadius:
//                                       BorderRadius.all(Radius.circular(20))),
//                               child: Center(
//                                 child: Text(
//                                   "OPTION 3",
//                                   style: TextStyle(fontSize: 50),
//                                 ),
//                               ),
//                               // color: Colors.deepPurpleAccent,
//                             ),
//                           ),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.symmetric(
//                               horizontal: 10, vertical: 10),
//                           child: GestureDetector(
//                             onTap: () {
//                               setState(() {
//                                 colorofop14 = Colors.grey;
//                                 if (ans == "OPTION 4") {
//                                   score++;
//                                 }
//                               });
//                             },
//                             child: Container(
//                               decoration: BoxDecoration(
//                                   color: colorofop14,
//                                   border: Border.all(color: Colors.blueAccent),
//                                   borderRadius:
//                                       BorderRadius.all(Radius.circular(20))),
//                               child: Center(
//                                 child: Text(
//                                   "OPTION 4",
//                                   style: TextStyle(fontSize: 50),
//                                 ),
//                               ),
//                               //color: Colors.deepPurpleAccent,
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

  buildquizcard(n, ql, ans, ol) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
      child: Container(
        height: MediaQuery.of(context).size.height / 1.3,
        child: QuizView(
          showCorrect: true,
          tagBackgroundColor: Colors.deepOrange[100],
          tagColor: Colors.red,
          questionTag: "Question: $n",
          answerColor: Colors.black45,
          answerBackgroundColor: Colors.redAccent,
          questionColor: Colors.black45,
          backgroundColor: Colors.deepPurpleAccent[100],
          width: 300,
          height: 600,
          question: ql,
          rightAnswer: ans,
          wrongAnswers: ol,
          onRightAnswer: () => print(++score),
          onWrongAnswer: () => print("Wrong"),
        ),
      ),
    );
  }
}
