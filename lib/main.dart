import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(FirstPage());
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color.fromRGBO(19, 19, 214, 1.0),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Random User Generator 🧑'),
          centerTitle: true,
        ),
        body: Center(
          child: RaisedButton(
            color: Color.fromRGBO(19, 19, 214, 1.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                30.0,
              ),
            ),
            onPressed: () {},
            child: Container(
              padding: EdgeInsets.all(10.0),
              child: Text(
                'Generate a random user!',
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
