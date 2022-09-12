import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

import '../model/user_data.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();
    //getUser().then((value) => print(value)).catchError((e) => print(e));
    Future<User> user = getUser();
    print("Hello world");
    print(user);
  }

  Future<User> getUser() async {
    late User user;
    Response response =
        await get(Uri.parse("https://jsonplaceholder.typicode.com/users/1"));
    try {
      user = User.fromJson(jsonDecode(response.body));
    } catch (e) {
      print('error $e');
    }
    return user;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FutureBuilder<User?>(
            future: getUser(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {

                return  Text('data arived...${snapshot.data?.name}');
              } else {
                return const Text('Wauting......');
              }
            },
          ),
        ],
      )),
    );
  }
}
