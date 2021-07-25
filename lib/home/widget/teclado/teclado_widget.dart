import 'package:calculado_1/core/app_colors.dart';
import 'package:calculado_1/home/widget/button/button_widget.dart';
import 'package:calculado_1/home/widget/button_row/button_row_widget.dart';
import 'package:flutter/Material.dart';

class Teclado extends StatelessWidget {
  final void Function(String) onPressed;

  const Teclado({Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.DARK,
      height: 450,
      child: Column(
        children: [
          ButtonRow(
            buttons: [
              Button.dark(text: "AC", isBig: true, onPressed: onPressed),
              Button.dark(text: "%", onPressed: onPressed),
              Button.operation(text: "/", onPressed: onPressed),
            ],
          ),
          SizedBox(height: 1),
          ButtonRow(
            buttons: [
              Button(text: "7", onPressed: onPressed),
              Button(text: "8", onPressed: onPressed),
              Button(text: "9", onPressed: onPressed),
              Button.operation(text: "x", onPressed: onPressed),
            ],
          ),
          SizedBox(height: 1),
          ButtonRow(
            buttons: [
              Button(text: "4", onPressed: onPressed),
              Button(text: "5", onPressed: onPressed),
              Button(text: "6", onPressed: onPressed),
              Button.operation(text: "-", onPressed: onPressed),
            ],
          ),
          SizedBox(height: 1),
          ButtonRow(
            buttons: [
              Button(text: "1", onPressed: onPressed),
              Button(text: "2", onPressed: onPressed),
              Button(text: "3", onPressed: onPressed),
              Button.operation(text: "+", onPressed: onPressed),
            ],
          ),
          SizedBox(height: 1),
          ButtonRow(
            buttons: [
              Button(text: "0", isBig: true, onPressed: onPressed),
              Button(text: ".", onPressed: onPressed),
              Button.operation(text: "=", onPressed: onPressed),
            ],
          ),
        ],
      ),
    );
  }
}
