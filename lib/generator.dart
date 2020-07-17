import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Generator extends StatefulWidget {
  @override
  _GeneratorState createState() => _GeneratorState();
}

class _GeneratorState extends State<Generator> {
  bool isLoaded = false;
  var name;
  var email;
  var birthday;
  var phoneNumber;
  var username;
  var password;
  var picture;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //TODO: make request to randomuser.me apis and setState
    getData();
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
          child: Text(isLoaded ? name : 'Loading...'),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.refresh),
        backgroundColor: Color.fromRGBO(19, 19, 214, 1.0),
        onPressed: () {},
      ),
    );
  }

  void getData() async {
    final response = await http.get('https://randomuser.me/api/');
    if (response.statusCode == 200) {
      Map<String, dynamic> result = json.decode(response.body);
      print(result);
      setState(() {
        isLoaded = true;
        name =
            '${result['results'][0]['name']['first']} ${result['results'][0]['name']['last']}';
        email = '${result['results'][0]['email']}';
        phoneNumber = '${result['results'][0]['cell']}';
        username = '${result['results'][0]['login']['username']}';
        password = '${result['results'][0]['login']['password']}';
        picture = '${result['results'][0]['picture']['medium']}';
      });
    } else {
      print('Oops');
    }
  }
}
