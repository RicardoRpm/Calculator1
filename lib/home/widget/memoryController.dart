class Memory {
  String _value = "0";

  String get value {
    return _value;
  }

  void applyCommand(String command) {
    if (command == "AC") {
      _value = "0";
    } else {
      _value += command;
    }
  }
}
