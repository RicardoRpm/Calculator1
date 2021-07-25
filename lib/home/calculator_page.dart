import 'package:calculado_1/home/widget/display/display_widget.dart';
import 'package:calculado_1/home/widget/memoryController.dart';
import 'package:calculado_1/home/widget/teclado/teclado_widget.dart';
import 'package:flutter/material.dart';

class CalculatorPage extends StatefulWidget {
  const CalculatorPage({Key? key}) : super(key: key);

  @override
  _CalculatorPageState createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  Memory memory = new Memory();
  _onPressed(String command) {
    setState(() {
      memory.applyCommand(command);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Display(text: memory.value),
          Teclado(
            onPressed: _onPressed,
          ),
        ],
      ),
    );
  }
}
