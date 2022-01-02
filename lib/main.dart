import 'package:flutter/material.dart';
import 'package:tutorial_app_ui/screens/getting_started.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GettingStarted(),
    );
  }
}
