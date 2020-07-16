import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(primaryColor: Color.fromRGBO(19, 19, 214, 1.0)),
      initialRoute: '/',
      routes: {
        '/': (context) => FirstPage(),
        '/generator': (context) => Generator(),
      },
    ),
  );
}

class FirstPage extends StatelessWidget {
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

class Generator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Here is your user! 💡'),
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
