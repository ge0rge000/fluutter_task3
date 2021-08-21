import 'package:flutter/material.dart';

import 'Homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Go Up',
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}





