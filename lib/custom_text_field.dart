import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final Color borderColor;
  final TextEditingController textController;
  final double inputWidth;
  final String placeholder;
  final Color textColor;

  CustomTextField(
      {@required this.placeholder,
      @required this.textController,
      this.borderColor = Colors.black,
      this.inputWidth = 250,
      this.textColor = Colors.black});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: this.inputWidth,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: this.borderColor, width: 1)),
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: CupertinoTextField(
          decoration: BoxDecoration(
              border: Border.all(color: Colors.transparent, width: 0)),
          placeholder: this.placeholder,
          controller: this.textController,
          style: TextStyle(color: this.textColor),
        ),
      ),
    );
  }
}
