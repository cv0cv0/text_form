import 'package:flutter/material.dart';

class PasswordField extends StatefulWidget {
  const PasswordField({
    this.hintText,
    this.labelText,
    this.helperText,
    this.onSaved,
    this.validator,
    this.onFieldSubmitted,
  });

  final String hintText;
  final String labelText;
  final String helperText;
  final FormFieldSetter<String> onSaved;
  final FormFieldValidator<String> validator;
  final ValueChanged<String> onFieldSubmitted;

  @override
  State<StatefulWidget> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) => TextFormField(
        obscureText: _obscureText,
        maxLength: 8,
        onSaved: widget.onSaved,
        validator: widget.validator,
        onFieldSubmitted: widget.onFieldSubmitted,
        decoration: InputDecoration(
          filled: true,
          hintText: widget.hintText,
          labelText: widget.labelText,
          helperText: widget.helperText,
          suffixIcon: GestureDetector(
            onTap: () => setState(() {
                  _obscureText = !_obscureText;
                }),
            child: Icon(_obscureText ? Icons.visibility : Icons.visibility_off),
          ),
        ),
      );
}
