import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Random User Generator'),
        ),
        body: Center(
          child: RaisedButton(
            onPressed: () {},
            child: Container(
              padding: EdgeInsets.all(4.0),
              child: Text(
                'Generate a random user!',
                style: TextStyle(fontSize: 18.0),
              ),
            ),
          ),
        ),
      ),
    ),
  );
}
