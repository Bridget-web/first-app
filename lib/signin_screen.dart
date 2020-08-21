import 'package:first_app/contents.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: <Widget>[
        Expanded(
            flex: 3,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/home.jpg"),
                    fit: BoxFit.cover,
                    alignment: Alignment.bottomCenter),
              ),
            )),
        Expanded(
            flex: 4,
            child: Padding(
                padding: const EdgeInsets.only(right: 16),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "LOGIN",
                          style: Theme.of(context).textTheme.headline4,
                        ),
                        Text(
                          "REGISTER",
                          style: Theme.of(context).textTheme.button,
                        )
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                            padding: const EdgeInsets.only(right: 16),
                            child: Icon(
                              Icons.alternate_email,
                              color: Colors.lightGreen,
                            )),
                        Expanded(
                            child: TextField(
                          decoration: InputDecoration(
                            hintText: "email",
                          ),
                        ))
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                            padding: const EdgeInsets.only(right: 16),
                            child: Icon(
                              Icons.lock,
                              color: Colors.lightGreen,
                            )),
                        Expanded(
                            child: TextField(
                          decoration: InputDecoration(
                            hintText: "password",
                          ),
                        ))
                      ],
                    ),
                  ],
                ))),
      ],
    ));
  }
}
