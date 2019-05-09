//

import 'package:flutter/material.dart';
import 'package:layout_tutorial/pages/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter layojut demo',
        debugShowCheckedModeBanner: false,
        home: HomePage(),
    );
  }
}