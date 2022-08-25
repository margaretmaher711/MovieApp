import 'package:flutter/material.dart';
import 'package:movies_app/test.dart';
import 'core/servies_locator/services_locator.dart';

void main() {
  ServicesLocator().init;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Movie App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Test(),
    );
  }
}
