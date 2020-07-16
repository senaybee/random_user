import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Generator extends StatefulWidget {
  @override
  _GeneratorState createState() => _GeneratorState();
}

class _GeneratorState extends State<Generator> {
  var isLoaded;
  var name;
  var email;
  var birthday;
  var phone_number;
  var password;
  var picture;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //TODO: make request to randomuser.me apis and setState
  }

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
