import 'package:flutter/material.dart';

class InputFieldWidget extends StatelessWidget {
  late final String _hintText;
  late final TextEditingController _controller;
  InputFieldWidget(
      {super.key,
      required final String hintText,
      required final TextEditingController controller}) {
    _hintText = hintText;
    _controller = controller;
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _controller,
      decoration: InputDecoration(labelText: _hintText),
      validator: (value) {
        if (value!.isEmpty) {
          return "$_hintText n'est pas reseigner";
        }
        return null;
      },
    );
  }
}
