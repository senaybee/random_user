import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter_spinkit/flutter_spinkit.dart';
//TODO: Create a file to hold const TextStyles

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
    try {
      getData();
    } catch (e) {
      print('Something happened :(');
    }
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
            child: isLoaded
                ? Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ClipOval(
                        child: Image.network(
                          picture,
                          fit: BoxFit.fill,
                          width: 200,
                          height: 200,
                        ),
                      ),
                      Text(username),
                      Text(password),
                      Text(name),
                      Text(email),
                      Text(phoneNumber),
                      Text(birthday)
                    ],
                  )
                : SpinKitRing(
                    color: Color.fromRGBO(19, 19, 214, 1.0),
                    size: 50.0,
                  ) //,
            ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.refresh),
        backgroundColor: Color.fromRGBO(19, 19, 214, 1.0),
        onPressed: () {
          setState(() {
            isLoaded = false;
          });
          getData();
        },
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
        picture = '${result['results'][0]['picture']['large']}';
        birthday = '${result['results'][0]['dob']['date']}'.substring(0, 10);
      });
    } else {
      throw Exception('Error fetching data');
    }
  }
}
