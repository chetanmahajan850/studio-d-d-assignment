import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final VoidCallback voidCallback;
  final String buttonTitle;
  final Color backgroundColor;
  final Color textColor;
  final Color borderColor;

  const MyButton({
    Key? key,
    required this.voidCallback,
    required this.buttonTitle,
    required this.backgroundColor,
    required this.textColor,
    required this.borderColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: const BorderRadius.all(
            Radius.circular(
              20,
            ),
          ),
          side: BorderSide(color: borderColor, width: 1.5),
        ),
        elevation: 1.0,
        backgroundColor: backgroundColor,
      ),
      onPressed: () {
        voidCallback.call();
      },
      child: Text(
        buttonTitle,
        textAlign: TextAlign.center,
        style:
            Theme.of(context).textTheme.bodyMedium?.copyWith(color: textColor),
      ),
    );
  }
}
