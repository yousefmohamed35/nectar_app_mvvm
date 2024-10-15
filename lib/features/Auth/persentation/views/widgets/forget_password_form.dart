import 'package:flutter/material.dart';
import 'package:nectarappmvvm/core/utils/widgets/custom_button.dart';

import 'email_text_form_field.dart';

class ForgetPasswordForm extends StatelessWidget {
  const ForgetPasswordForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         EmailTextFormField(),
          SizedBox(
            height: 60,
          ),
          CustomButton(
            text: 'Continue',
          )
      ],
    );
  }
}