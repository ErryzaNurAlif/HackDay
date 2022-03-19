import 'package:flutter/material.dart';
import 'package:phonebook/ui/pages/home/home.dart';
// import 'package:phonebook/ui/pages/home/home.dart';
// import 'package:phonebook/ui/pages/sign_in/sign_in.dart';
// import 'package:phonebook/ui/pages/sign_up/sign_up.dart';
// import 'package:phonebook/ui/pages/sign_in/sign_in.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
