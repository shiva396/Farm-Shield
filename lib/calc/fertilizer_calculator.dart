// ignore_for_file: library_private_types_in_public_api

import 'package:farmshield/constants.dart';
import 'package:flutter/material.dart';

// Define a custom Form widget.
class MyCustomForm extends StatefulWidget {
  final String type;

  const MyCustomForm({super.key, required this.type});
  @override
  _MyCustomFormState createState() => _MyCustomFormState();
}

// Define a corresponding State class.
// This class holds the data related to the Form.
class _MyCustomFormState extends State<MyCustomForm> {
  // ignore: non_constant_identifier_names
  bool show_value = false;

  // Create a text controller and use it to retrieve the current value
  // of the TextField.
  final myController = TextEditingController();

  String? val;
  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var type = widget.type.toLowerCase();
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SizedBox(
              height: height * 0.06,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_back,
                    size: width * 0.07,
                  )),
            ),
            const Text(
              "Fertilizer  Calculator",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: height * 0.04,
            ),
            const Text(
              'Enter Plot Size',
              textAlign: TextAlign.left,
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.green),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: defaultPadding),
              child: TextFormField(
                cursorColor: kPrimaryColor,
                decoration: const InputDecoration(
                  hintText: "Enter in acres",
                  prefixIcon: Padding(
                    padding: EdgeInsets.all(defaultPadding),
                    child: Icon(Icons.area_chart),
                  ),
                ),
                controller: myController,
                keyboardType: TextInputType.number,
              ),
            ),
            const Text(
              'Acres',
              textAlign: TextAlign.right,
              style: TextStyle(color: Colors.green),
            ),
            const SizedBox(
              height: 10,
            ),
            Column(
              children: <Widget>[
                if (show_value)
                  const Column(
                    children: <Widget>[
                      Text(
                        'We advise you not to use Chemicals for the next 45 days...',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                CheckboxListTile(
                  title: const Text("Natural Enemies in your Field"),
                  controlAffinity: ListTileControlAffinity.leading,
                  value: show_value,
                  onChanged: (bool? showvalue) {
                    setState(() {
                      show_value = showvalue!;
                    });
                  },
                ),
                Text(
                  val ?? "",
                  style: const TextStyle(
                      fontSize: 19, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        // When the user presses the button, show an alert dialog containing
        // the text that the user has entered into the text field.
        onPressed: () {
          if (myController.text.toString().trim().isNotEmpty) {
            if (type == 'banana') {
              setState(() {
                val = calculation(myController, 0.109, 0.250, 0.175);
              });
            } else if (type == 'cucumber') {
              setState(() {
                val = calculation(myController, 30, 17, 51);
              });
            } else if (type == 'pepper') {
              setState(() {
                val = calculation(myController, 27, 17, 40);
              });
            } else if (type == 'potato') {
              setState(() {
                val = calculation(myController, 26, 40, 56);
              });
            } else if (type == 'tomato') {
              setState(() {
                val = calculation(myController, 27, 17, 40);
              });
            } else {
              setState(() {
                val = calculation(myController, 10, 10, 30);
              });
            }
          } else {
            showDialog<void>(
                context: context,
                barrierDismissible: false,
                builder: (BuildContext context) {
                  return AlertDialog(
                    content: const Text("Please enter the correct field"),
                    actions: [
                      TextButton(
                        child: const Text("OK"),
                        onPressed: () {
                          Navigator.pop(context, 'Cancel');
                        },
                      ),
                    ],
                    title: const Text("Error"),
                  );
                });
          }
        },

        // tooltip: 'Show me the value!',
        child: const Icon(Icons.calculate),
      ),
    );
  }
}

String calculation(TextEditingController myController, double dap_value,
    double mop_value, double urea_value) {
  double acre = double.parse(myController.text);
  double dap = dap_value * acre * 2;
  double mop = mop_value * acre * 2;
  double urea = urea_value * acre * 2;

  return 'MOP: $mop kg,\nDAP: $dap kg \nUrea: $urea kg';
}
