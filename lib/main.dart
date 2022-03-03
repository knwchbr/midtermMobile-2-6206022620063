import 'package:flutter/material.dart';
import 'registerscreen.dart';
import 'profilepage.dart';
void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter register UI',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: registerscreen(),
      
      
    );
  }
}


