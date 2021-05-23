import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String buttonText;
  final Color backgroundColor;
  final Function onClickHandler;
  final double buttonSize;
  final double buttonHeight;
  final Color textColor;

  CustomButton(
      {@required this.buttonText,
      @required this.backgroundColor,
      @required this.onClickHandler,
      this.buttonSize = 150,
      this.buttonHeight = 40,
      this.textColor = Colors.white});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: this.buttonSize,
      height: this.buttonHeight,
      decoration: BoxDecoration(
          color: this.backgroundColor, borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              this.buttonText,
              style: TextStyle(color: this.textColor),
            )
          ],
        ),
      ),
    );
  }
}
