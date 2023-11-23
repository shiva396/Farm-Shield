import 'package:farmshield/theme/provider/dark_theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class EditItem extends StatelessWidget {
  final Widget widget;
  final String title;
  const EditItem({
    super.key,
    required this.widget,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    final themeChange = Provider.of<DarkThemeProvider>(context);
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 2,
          child: Text(
            title,
            style: TextStyle(
                fontSize: 18,
                color: themeChange.getDarkTheme ? Colors.white : Colors.black

                // color: Color.fromARGB(255, 0, 0, 0),
                ),
          ),
        ),
        const SizedBox(width: 40),
        Expanded(
          flex: 7,
          child: widget,
        )
      ],
    );
  }
}
