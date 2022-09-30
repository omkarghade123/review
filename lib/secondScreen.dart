import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  var multipleSelected;
  SecondScreen({required this.multipleSelected, key}) : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Selected box')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(widget.multipleSelected),
            
          ],
        ),
      ),
      
    );
    
  }
}
