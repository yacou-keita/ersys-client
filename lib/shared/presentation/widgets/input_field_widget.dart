import 'package:flutter/material.dart';

class InputFieldWidget extends StatelessWidget {
  late final String _hintText;
  InputFieldWidget({super.key, required final String hintText}) {
    _hintText = hintText;
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(hintText: _hintText),
    );
  }
}
