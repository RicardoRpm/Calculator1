import 'package:calculado_1/home/widget/button/button_widget.dart';
import 'package:flutter/Material.dart';

class ButtonRow extends StatelessWidget {
  final List<Button> buttons;
  const ButtonRow({Key? key, required this.buttons}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: buttons,
      ),
    );
  }
}
