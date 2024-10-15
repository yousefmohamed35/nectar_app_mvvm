import 'package:flutter/material.dart';
import 'package:nectarappmvvm/constants.dart';

class PasswordTextFormField extends StatelessWidget {
  const PasswordTextFormField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: Constants.kPrimaryColor),
        ),
        suffixIcon: Icon(Icons.visibility),
      ),
    );
  }
}
