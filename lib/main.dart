import 'package:color_generator/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Main());
}

/// Root of application
class Main extends StatelessWidget {
  /// Constructor for myApp class
  const Main({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Color generator',
      home: HomeScreen(),
    );
  }
}
