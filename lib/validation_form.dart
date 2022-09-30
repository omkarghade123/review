import 'package:flutter/material.dart';

import 'package:reviewassingment/validation2.dart';

class ValidationForm extends StatefulWidget {
  @override
  _ValidationFormState createState() => _ValidationFormState();
}

class _ValidationFormState extends State<ValidationForm> {
  TextEditingController Firstname = TextEditingController();
  TextEditingController lastname = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController MobileNum = TextEditingController();

   static final _formKey = GlobalKey<FormState>();
  var isLoading = true;

  void _submit() {
    final isValid = _formKey.currentState!.validate();
    if (!isValid) {
      return _formKey.currentState!.save();

    }
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Valid(
             Firstname: Firstname.text.toString(),
             lastname: lastname.text.toString(),
             email: email.text.toString(),
             MobileNum: MobileNum.text.toString(),
          ),
        ));
    // showDialog(
    //     context: context,
    //     builder: (context) {
    //       return AlertDialog(
    //         title: Center(child: Text("Successful")),
    //       );
    //     });
    final snackBar = SnackBar(
      content: Text("Successfully Save",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black)),
      backgroundColor: Colors.amber,
      action: SnackBarAction(label: "Undo", onPressed: () {}),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 250, 200, 19),
        title: Text("Form Validation"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView(
          children: [
            Form(
              key: _formKey,
              child: Column(
                children: [
                  Text(
                    "Form-Validation In Flutter ",
                    style:
                        TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    
                    controller: Firstname,
                    // inputFormatters: <TextInputFormatter>[
                    // UpperCaseTextFormatter()
                    // ],
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'First Name',
                      hintText: "Enter Your First Name",
                    ),
                    textCapitalization: TextCapitalization.words,
                    
                    onFieldSubmitted: (value) {},
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Can't be empty";
                      }
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    controller: lastname,
                    // inputFormatters: <TextInputFormatter>[
                    //   UpperCaseTextFormatter()
                    // ],
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Last Name',
                      hintText: "Enter Your Last Name",
                    ),
                    textCapitalization: TextCapitalization.words,
                    onFieldSubmitted: (value) {},
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Can't be empty";
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    controller: email,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'E-Mail',
                        hintText: "Enter Your E-Mail"),
                    keyboardType: TextInputType.emailAddress,
                    onFieldSubmitted: (value) {},
                    validator: (value) {
                      if (value!.isEmpty ||
                          !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                              .hasMatch(value)) {
                        return 'Cant be empty';
                      }
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    controller: MobileNum,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Phone Number',
                        hintText: "Enter Your 10 digit mobile Number"),
                    maxLength: 10,
                    onFieldSubmitted: (value) {
                      
                    },
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Can't be empty";
                      } else if (value.length != 10) {
                        return "mobile number must 10 digits";
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: double.infinity,
                    child: RaisedButton(
                      padding: EdgeInsets.symmetric(
                        vertical: 10.0,
                        horizontal: 15.0,
                      ),
                      child: Text(
                        "Submit",
                        style: TextStyle(
                          fontSize: 24.0,
                        ),
                      ),
                      onPressed: () {
                        _submit();
                      },
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// class UpperCaseTextFormatter extends TextInputFormatter {
//   @override
//   TextEditingValue formatEditUpdate(
//       TextEditingValue oldValue, TextEditingValue newValue) {
//     return TextEditingValue(
//       text: capitalize(newValue.text),
//       selection: newValue.selection,
//     );
//   }
// }

// String capitalize(String value) {
//   if (value.trim().isEmpty) return "";
//   return "${value[0].toUpperCase()}${value.substring(1).toLowerCase()}";
// }
