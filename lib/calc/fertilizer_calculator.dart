// ignore_for_file: library_private_types_in_public_api


import 'package:farmshield/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
            Text(
              "fertilizercalc".tr,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: height * 0.04,
            ),
            Text(
              'enterplotsize'.tr,
              textAlign: TextAlign.left,
              style: const TextStyle(
                  fontWeight: FontWeight.bold, color: Colors.green),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: defaultPadding),
              child: TextFormField(
                cursorColor: kPrimaryColor,
                decoration: InputDecoration(
                  hintText: "enterinacres".tr,
                  prefixIcon: const Padding(
                    padding: EdgeInsets.all(defaultPadding),
                    child: Icon(Icons.area_chart),
                  ),
                ),
                controller: myController,
                keyboardType: TextInputType.number,
              ),
            ),
            Text(
              'acres'.tr,
              textAlign: TextAlign.right,
              style: const TextStyle(color: Colors.green),
            ),
            const SizedBox(
              height: 10,
            ),
            Column(
              children: <Widget>[
                if (show_value)
                  Column(
                    children: <Widget>[
                      Text(
                        'We advise you not to use Chemicals for the next 45 days...'
                            .tr,
                        style: const TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                CheckboxListTile(
                  title: Text("Natural Enemies in your Field".tr),
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
            setState(() {
              val = calculation(myController);
            });
          } else {
            showDialog<void>(
                context: context,
                barrierDismissible: false,
                builder: (BuildContext context) {
                  return AlertDialog(
                    content: Text("Please enter the correct field".tr),
                    actions: [
                      TextButton(
                        child: Text("OK".tr),
                        onPressed: () {
                          Navigator.pop(context, 'Cancel'.tr);
                        },
                      ),
                    ],
                    title: Text("Error".tr),
                  );
                });
          }
        },

        // tooltip: 'Show me the value!',
        child: const Icon(Icons.calculate),
      ),
    );
  }

  String calculation(
    TextEditingController myController,
  ) {
    double acre = double.parse(myController.text);
    double dap, mop, urea = 0.0;
    String type = widget.type.toString().trim().toLowerCase();
  
    if (type == 'apple') {
      dap = 25;
      mop = 15;
      urea = 30;
    } else if (type == 'mango') {
      dap = 30;
      mop = 20;
      urea = 35;
    } else if (type == 'corn') {
      dap = 20;
      mop = 25;
      urea = 15;
    } else if (type == 'soybean') {
      dap = 15;
      mop = 30;
      urea = 20;
    } else if (type == 'grape') {
      dap = 35;
      mop = 15;
      urea = 25;
    } else if (type == 'orange') {
      dap = 25;
      mop = 30;
      urea = 20;
    } else if (type == 'strawberry') {
      dap = 30;
      mop = 25;
      urea = 15;
    } else if (type == 'guava') {
      dap = 20;
      mop = 35;
      urea = 15;
    } else if (type == 'pomegranate') {
      dap = 30;
      mop = 20;
      urea = 25;
    } else if (type == 'coriander') {
      dap = 15;
      mop = 25;
      urea = 30;
    } else if (type == 'cherry') {
      dap = 25;
      mop = 15;
      urea = 30;
    } else if (type == 'lemon') {
      dap = 30;
      mop = 20;
      urea = 35;
    } else if (type == 'cucumber') {
      dap = 30;
      mop = 17;
      urea = 51;
    } else if (type == 'pepper') {
      dap = 27;
      mop = 17;
      urea = 40;
    } else if (type == 'potato') {
      dap = 26;
      mop = 40;
      urea = 56;
    } else if (type == 'tomato') {
      dap = 22;
      mop = 28;
      urea = 45;
    } else {
      dap = 20;
      mop = 10;
      urea = 10;
    }
    dap = dap * acre * 2;
    mop = mop * acre * 2;
    urea = urea * acre * 2;

    return 'MOP: $mop kg,\nDAP: $dap kg \nUrea: $urea kg';
  }
}
