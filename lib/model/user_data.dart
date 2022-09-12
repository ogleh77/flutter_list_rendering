import 'package:flutter/material.dart';

class User {
  final String? name;
  final String? userName;
  final String? email;

  User({@required this.name, @required this.userName, @required this.email});

  factory User.fromJson(Map<String, dynamic> user) {
    return User(
        userName: user['username'], name: user['name'], email: user['email']);
  }

  @override
  String toString() {
    return 'User{name: $name, userName: $userName, email: $email}';
  }
}
