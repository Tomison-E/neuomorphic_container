import 'package:example/neuomorphism.dart';
import 'package:example/utils/sizeConfig.dart';
import 'package:flutter/material.dart';
import 'package:example/utils/uiData.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: UIData.appName,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Example(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Example extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Neuomorphism(),
    );
  }
}
