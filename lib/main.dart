import 'package:flutter/material.dart';
import 'package:mdreve/widgets/acceuil.dart';
import 'package:mdreve/widgets/dashboard.dart';
import 'package:mdreve/widgets/firstPage.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:FirstPage()
    );
  }
}

