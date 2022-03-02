import 'package:flutter/material.dart';
import 'registerscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter register UI',
      debugShowCheckedModeBanner: false,
      home: registerscreen(),
      
      
    );
  }
}