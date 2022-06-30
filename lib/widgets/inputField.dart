import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final bool isPassword;
  final bool isPrefixIcon;
  final bool isSuffixIcon;
  final String text;
  final IconData prefixIcon;
  final IconData suffixIcon;
  final TextEditingController controller;
  final VoidCallback onSubmitted;
  final VoidCallback onChanged;
  final TextInputType inputType;
  const InputField(
      {Key? key,
      this.isPassword = false,
      this.isPrefixIcon = false,
      this.isSuffixIcon = false,
      required this.text,
      this.prefixIcon = Icons.abc,
      this.suffixIcon = Icons.abc,
      required this.controller,
      required this.onSubmitted,
      required this.onChanged,
        required this.inputType})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: inputType,
      obscureText: isPassword,
      controller: controller,
      onFieldSubmitted: (value) {
        onSubmitted();
      },
      onChanged: (value) {
        onChanged();
      },
      decoration: InputDecoration(
        labelText: text,
        border: const OutlineInputBorder(),

        prefixIcon: (isPrefixIcon)?Icon(prefixIcon):Icon(null),
        suffixIcon: (isSuffixIcon)?Icon(suffixIcon):Icon(null),
      ),
    );
  }
}
