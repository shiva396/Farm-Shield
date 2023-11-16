import 'package:farmshield/utils/forward_button.dart';
import 'package:flutter/material.dart';

class SettingItem extends StatelessWidget {
  final String title;
  final Color bgColor;
  final Color iconColor;
  final IconData icon;
  final Function() onTap;
  final String? value;
  const SettingItem({
    super.key,
    required this.title,
    required this.bgColor,
    required this.iconColor,
    required this.icon,
    required this.onTap,
    this.value,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Row(
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: bgColor,
            ),
            child: Icon(
              icon,
              color: iconColor,
            ),
          ),
          const SizedBox(width: 20),
          Text(
            title,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          const Spacer(),
          value != null
              ? Text(
                  value!,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                )
              : const SizedBox(),
          const SizedBox(width: 20),
          ForwardButton(
            onTap: onTap,
          ),
        ],
      ),
    );
  }
}

class InformationItem extends StatelessWidget {
  final String title;
  final Color bgColor;
  final Color iconColor;
  final IconData icon;
  final String? value;
  const InformationItem({
    super.key,
    required this.title,
    required this.bgColor,
    required this.iconColor,
    required this.icon,
    this.value,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Row(
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: bgColor,
            ),
            child: Icon(
              icon,
              color: iconColor,
            ),
          ),
          const SizedBox(width: 20),
          Text(
            title,
            style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 72, 71, 71)),
          ),
          // Container(
          //   padding: const EdgeInsets.only(left: 30, right: 30),
          //   child: DropdownButtonFormField(

          //     // items: lang
          //     //     .map((value) =>
          //          DropdownMenuItem(
          //               value: value,
          //               child: Text(
          //                 value,
          //                 style: const TextStyle(
          //                     color: Colors.deepPurpleAccent,
          //                     fontStyle: FontStyle.italic,
          //                     fontWeight: FontWeight.bold),
          //               ),
          //             ))
          //         .toList(),
          //     onChanged: (select) {
          //       // setState(() {
          //       //   selected = select;
          //       // });
          //     },
          //     icon: const Icon(
          //       Icons.translate,
          //       color: Colors.deepPurpleAccent,
          //     ),
          //     // value: selected,
          //     hint: const Text(
          //       "Select Language To Translate",
          //       style: TextStyle(
          //           color: Colors.deepPurpleAccent,
          //           fontStyle: FontStyle.italic,
          //           fontWeight: FontWeight.bold),
          //     ),
          //     decoration: InputDecoration(
          //       border: OutlineInputBorder(
          //         borderSide: const BorderSide(color: Colors.deepPurpleAccent),
          //         borderRadius: BorderRadius.circular(25),
          //       ),
          //     ),
          //   ),
          // ),
          const Spacer(),
          value != null
              ? Text(
                  value!,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                )
              : const SizedBox(),
          const SizedBox(width: 20),
        ],
      ),
    );
  }
}
