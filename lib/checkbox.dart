import 'package:flutter/material.dart';
import 'package:reviewassingment/secondScreen.dart';
import 'package:reviewassingment/validation_form.dart';

class CheckBox extends StatefulWidget {
  const CheckBox({Key? key}) : super(key: key);

  @override
  State<CheckBox> createState() => _CheckBoxState();
}

class _CheckBoxState extends State<CheckBox> {
  List multipleSelected = [];
  List checkListItems = [
    {
      "id": 0,
      "value": false,
      "title": "Sunday",
    },
    {
      "id": 1,
      "value": false,
      "title": "Monday",
    },
    {
      "id": 2,
      "value": false,
      "title": "Tuesday",
    },
    {
      "id": 3,
      "value": false,
      "title": "Wednesday",
    },
    {
      "id": 4,
      "value": false,
      "title": "Thursday",
    },
    {
      "id": 5,
      "value": false,
      "title": "Friday",
    },
    {
      "id": 6,
      "value": false,
      "title": "Saturday",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Check Box"),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ValidationForm()));
              },
              icon: Icon(Icons.edit))
        ],
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 64.0),
        child: ListView(
          children: [
            Column(
              children: [
                Column(
                  children: List.generate(
                    checkListItems.length,
                    (index) => CheckboxListTile(
                      controlAffinity: ListTileControlAffinity.leading,
                      contentPadding: EdgeInsets.zero,
                      dense: true,
                      title: Text(
                        checkListItems[index]["title"],
                        style: const TextStyle(
                          fontSize: 16.0,
                          color: Colors.black,
                        ),
                      ),
                      value: checkListItems[index]["value"],
                      onChanged: (value) {
                        setState(() {
                          checkListItems[index]["value"] = value;
                          if (multipleSelected
                              .contains(checkListItems[index])) {
                            multipleSelected.remove(checkListItems[index]);
                          } else {
                            multipleSelected.add(checkListItems[index]);
                          }
                        });
                      },
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SecondScreen(
                              multipleSelected: multipleSelected.toString()),
                        ));
                  },
                  child: Text("submit"),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Click on the Edit Icon and go to validation form",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
