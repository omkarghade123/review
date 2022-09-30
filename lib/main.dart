import 'package:flutter/material.dart';
import 'package:reviewassingment/checkbox.dart';

void main() => runApp(
      // DevicePreview(
      //   enabled: !kReleaseMode,
      //   builder: (context)
      MyApp(),
    );

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CheckBox(),
    );
  }
}
