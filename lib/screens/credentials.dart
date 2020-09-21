import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_web/screens/quiz.dart';
import 'package:flutter_web/widgets/appbar.dart';

import 'main.dart';

class Credentials extends StatefulWidget {
  final text;
  Credentials(this.text);
  @override
  _CredentialsState createState() => _CredentialsState();
}

class _CredentialsState extends State<Credentials> {
  TextEditingController emailController = new TextEditingController();
  TextEditingController nameController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AB(widget.text),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 700, vertical: 300),
        child: Card(
          elevation: 100,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              buildCenter(nameController, "Name", Icons.perm_identity),
              SizedBox(
                height: 30,
              ),
              buildCenter(emailController, "Email", Icons.email),
              SizedBox(
                height: 30,
              ),
              RaisedButton(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text("Enter"),
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(color: Colors.deepPurpleAccent)),
                  color: Colors.deepPurpleAccent,
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => QUIZ1(widget.text)));
                  })
            ],
          ),
        ),
      ),
    );
  }

  Center buildCenter(cnt, text, icon) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 100),
        child: Row(
          children: [
            Expanded(
                flex: 1,
                child: Icon(
                  icon,
                  size: 50,
                  color: Colors.deepPurpleAccent,
                )),
            SizedBox(
              width: 30,
            ),
            Expanded(
              flex: 9,
              child: TextField(
                controller: cnt,
                //obscureText: true,
                textAlign: TextAlign.center,
                decoration: new InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50.0),
                    borderSide:
                        BorderSide(color: Colors.deepPurpleAccent, width: 2.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50.0),
                    borderSide:
                        BorderSide(color: Colors.deepPurpleAccent, width: 2.0),
                  ),
                  hintText: text,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
