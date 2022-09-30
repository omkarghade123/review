import 'package:flutter/material.dart';
import 'package:reviewassingment/user.dart';

class Valid extends StatefulWidget {
  var Firstname;
  var lastname;
  var email;
  var MobileNum;

  Valid({
    Key? key,
    required this.Firstname,
    required this.lastname,
    required this.email,
    required this.MobileNum
  }) : super(key: key);

  @override
  _ValidState createState() => _ValidState();
}

class _ValidState extends State<Valid> {
  @override
  Widget build(BuildContext context) {
    // User user= ModalRoute.of(context)!.settings.arguments as User;
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Details Screen'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("First Name:-"),
            Text(
              widget.Firstname,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 239, 52, 6)),
            ),
            SizedBox(
              height: 15,
            ),
            Text("Last Name:-"),
            Text(
              widget.lastname,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 239, 52, 6)
                  ),
            ),
            SizedBox(
              height: 15,
            ),
            Text("Email:-"),
            Text(
              widget.email,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                   color: Color.fromARGB(255, 239, 52, 6)),
            ),
            SizedBox(
              height: 15,
            ),
            Text("Mobile Number:-"),
            Text(
              widget.MobileNum,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                 color: Color.fromARGB(255, 239, 52, 6)),
            ),
          ],
        ),
      ),
    );
  }
}
