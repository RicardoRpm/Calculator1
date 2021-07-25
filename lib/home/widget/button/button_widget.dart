import 'package:calculado_1/core/app_colors.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String text;
  final Color? color;
  final bool? isBig;
  final void Function(String) onPressed;

  const Button({
    Key? key,
    required this.text,
    this.isBig = false,
    this.color = AppColors.DEFAULT,
    required this.onPressed,
  }) : super(key: key);

  const Button.operation({
    Key? key,
    required this.text,
    this.isBig = false,
    this.color = AppColors.OPERATION,
    required this.onPressed,
  }) : super(key: key);

  const Button.dark({
    Key? key,
    required this.text,
    this.isBig = false,
    this.color = AppColors.DARK,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: isBig! ? 2 : 1,
      child: Padding(
        padding: const EdgeInsets.only(left: 1, right: 1),
        child: ElevatedButton(
          onPressed: () => onPressed(text),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(color!),
          ),
          child: Text(
            text,
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.w100,
            ),
          ),
        ),
      ),
    );
  }
}
