import 'package:flutter/material.dart';

class MyCheckBox extends StatefulWidget {
  const MyCheckBox({super.key});

  @override
  State<MyCheckBox> createState() => _MyCheckBoxState();
}

bool isChecked = false;

class _MyCheckBoxState extends State<MyCheckBox> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          isChecked = !isChecked;
        });
      },
      child: Container(
        width: 25.0, // Adjust the size as needed
        height: 25.0, // Adjust the size as needed
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            width: 1.0,
            color: Colors.white.withOpacity(0.2),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(3.0),
          child: isChecked
              ? Icon(
                  Icons.circle_sharp,
                  size: 15.0,
                  color: Colors.black.withOpacity(0.6),
                )
              : Container(),
        ),
      ),
    );
  }
}
