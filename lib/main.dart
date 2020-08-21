// import 'dart:js';

import 'package:first_app/contents.dart';
import 'package:first_app/signin_screen.dart';
import 'package:flutter/material.dart';
import 'package:first_app/drawer.dart';
//void main() {
//runApp(MyApp());
//}

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'welcome',
      theme: ThemeData(
          brightness: Brightness.dark,
          primaryColor: kPrimaryColor,
          scaffoldBackgroundColor: kBackground,
          textTheme: TextTheme(
              headline3: TextStyle(
                  color: Colors.lightGreen, fontWeight: FontWeight.bold),
              button: TextStyle(
                color: Colors.lightGreen,
              ),
              headline6: TextStyle(
                  color: Colors.yellow, fontWeight: FontWeight.normal)),
          inputDecorationTheme: InputDecorationTheme(
              enabledBorder: UnderlineInputBorder(
                  borderSide:
                      BorderSide(color: Colors.white.withOpacity(0.2))))),
      home: WelcomeScreen(),
    );
  }
}

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: <Widget>[
        Expanded(
            child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/home.jpg'),
                  fit: BoxFit.cover)),
        )),
        Expanded(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            RichText(
                textAlign: TextAlign.center,
                text: TextSpan(children: [
                  TextSpan(
                      text: "FRESHLYRIPE\n",
                      style: Theme.of(context).textTheme.headline3),
                  TextSpan(
                    text: "Buy Your Fruits and Vegetables online",
                    style: Theme.of(context).textTheme.headline6,
                  )
                ])),
            FittedBox(
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return SignInScreen();
                  }));
                },
                child: Container(
                  margin: EdgeInsets.only(bottom: 25),
                  padding: EdgeInsets.symmetric(horizontal: 26, vertical: 18),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.lightGreen,
                  ),
                  child: Row(
                    children: <Widget>[
                      Text(
                        "My Account",
                        style: Theme.of(context)
                            .textTheme
                            .button
                            .copyWith(color: Colors.black),
                      ),
                      SizedBox(width: 10),
                      Icon(Icons.arrow_forward, color: Colors.black),
                    ],
                  ),
                ),
              ),
            ),
          ],
        )),
      ]),
    );
  }
}
//class MyApp extends StatefulWidget {
//  @override
//State<StatefulWidget> createState() {
// TODO: implement createState
//return MyAppState();

//}
//}

//class MyAppState extends StatelessW {
//var questionindex = 0;

//void answerQuestion() {
//setState(() {
//questionindex = questionindex + 1;
//});

//print(questionindex);
//}/
//@override
//Widget build(BuildContext context) {
//var questions = [
//'what\' your favourite color?',
//'what\'s your favourite dish'
//];
//return MaterialApp(
//home: Scaffold(
//appBar: AppBar(
//title: Text('My First App'),
//),
//body: Column(children: [Text(questions.elementAt(0)),
//body: Column(
//children: [
//Text(questions[1]),
//RaisedButton(
//child: Text('Answer1'),
//onPressed: answerQuestion,
//),
//RaisedButton(
//child: Text('Answer2'),
//onPressed: answerQuestion,
//),
//RaisedButton(
//child: Text('Answer1'),
//onPressed: answerQuestion,
//),
// ],
//),
// ),
//);
//}
//}
