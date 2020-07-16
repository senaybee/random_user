import 'package:flutter/material.dart';

class Generator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Here is your user! 💡'),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          child: Text('Hello world!'),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.refresh),
        backgroundColor: Color.fromRGBO(19, 19, 214, 1.0),
        onPressed: () {},
      ),
    );
  }
}
