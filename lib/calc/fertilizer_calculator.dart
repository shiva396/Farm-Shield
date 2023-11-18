import 'package:farmshield/constants.dart';
import 'package:flutter/material.dart';

// Define a custom Form widget.
class MyCustomForm extends StatefulWidget {
  final String type;

  const MyCustomForm({super.key, required this.type});
  @override
  // ignore: library_private_types_in_public_api
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

  // ignore: prefer_typing_uninitialized_variables
  var val;
  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myController.dispose();
    super.dispose();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    var type = widget.type.toLowerCase();
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.arrow_back)),
            ),
            Text(
              "Fertilizer  Calculator",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
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
                  style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
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
            double acre = double.parse(myController.text);
            if (type == 'banana') {
              //name: 'banana'
              double dap = 0.109 * acre * 2;
              double mop = 0.250 * acre * 2;
              double urea = 0.175 * acre * 2;
              setState(() {
                val = 'MOP: $mop kg,\nDAP: $dap kg \nUrea: $urea kg';
              });
            } else if (type == 'cucumber') {
              double dap = 30 * acre * 2;
              double mop = 17 * acre * 2;
              double urea = 51 * acre * 2;
              setState(() {
                val = 'MOP: $mop kg,\nDAP: $dap kg \nUrea: $urea kg';
              });
            } else if (type == 'pepper') {
              double dap = 27 * acre * 2;
              double mop = 17 * acre * 2;
              double urea = 40 * acre * 2;
              setState(() {
                val = 'MOP: $mop kg,\nDAP: $dap kg \nUrea: $urea kg';
              });
            } else if (type == 'potato') {
              double dap = 26 * acre * 2;
              double mop = 40 * acre * 2;
              double urea = 56 * acre * 2;
              setState(() {
                val = 'MOP: $mop kg,\nDAP: $dap kg \nUrea: $urea kg';
              });
            } else if (type == 'tomato') {
              double dap = 27 * acre * 2;
              double mop = 17 * acre * 2;
              double urea = 40 * acre * 2;
              setState(() {
                val = 'MOP: $mop kg,\nDAP: $dap kg \nUrea: $urea kg';
              });
            } else {
              double acre = double.parse(myController.text);
              //name: 'rice', dap: 10, mop: 10, urea: 30
              double dap = 10 * acre * 2;
              double mop = 10 * acre * 2;
              double urea = 30 * acre * 2;

              setState(() {
                val = 'MOP: $mop kg,\nDAP: $dap kg \nUrea: $urea kg';
              });
            }
            // val = 'MOP: $mop kg,\nDAP: $dap kg \nUrea: $urea kg';
            // return AlertDialog(
            //   // Retrieve the text the that user has entered by using the
            //   // TextEditingController.
            //   content: Text('MOP: $mop kg,\nDAP: $dap kg \nUrea: $urea kg'),
            // );
          } else {
            showDialog<void>(
                context: context,
                barrierDismissible: false,
                builder: (BuildContext context) {
                  return AlertDialog(
                    content: Text("Please enter the correct field"),
                    actions: [
                      TextButton(
                        child: Text("OK"),
                        onPressed: () {
                          Navigator.pop(context, 'Cancel');
                        },
                      ),
                    ],
                    title: Text("Error"),
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
