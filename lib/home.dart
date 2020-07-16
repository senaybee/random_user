import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(19, 19, 214, 1.0),
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
          onPressed: () {
            Navigator.pushNamed(context, '/generator');
          },
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
    );
  }
}
