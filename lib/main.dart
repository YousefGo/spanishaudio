import 'package:flutter/material.dart';
import 'HomePage.dart';
void main()=>runApp(MyApp());


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "spanish number app ",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,


      ),
      home: HomePage(),
    );
  }
}
