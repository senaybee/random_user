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
        backgroundColor: Color.fromRGBO(0, 0, 153, 1.0),
        appBar: AppBar(
          title: Text('Random User Generator'),
        ),
        body: Center(
          child: RaisedButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                15.0,
              ),
            ),
            onPressed: () {},
            child: Container(
              padding: EdgeInsets.all(10.0),
              child: Text(
                'Generate a random user!',
                style: TextStyle(fontSize: 18.0),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
