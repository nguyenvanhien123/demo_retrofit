import 'package:flutter/material.dart';

class TextFieldHelper {

  static void setTextValue(TextEditingController controller, String newText) {
    controller.value = controller.value.copyWith(
      text: newText,
      selection: TextSelection(
          baseOffset: newText.length,
          extentOffset: newText.length
      ),
    );
  }
}