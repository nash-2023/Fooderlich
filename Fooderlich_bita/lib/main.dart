import 'package:flutter/material.dart';
import 'package:fooderlich/home.dart';

import 'fooderlich_theme.dart';

void main() {
  // 1
  runApp(const Fooderlich());
}

class Fooderlich extends StatelessWidget {
  // 2
  const Fooderlich({super.key});
  @override
  Widget build(BuildContext context) {
    final myTheme = FooderlichTheme.dark();
    // TODO: Apply Home widget
    // 3
    return MaterialApp(
      theme: myTheme,
      title: 'Fooderlich',
      // 4
      home: Home(),
    );
  }
}
