import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nectarappmvvm/core/utils/app_route.dart';
import 'package:nectarappmvvm/core/utils/styles.dart';
import 'package:nectarappmvvm/core/utils/widgets/custom_button.dart';
import 'package:nectarappmvvm/core/utils/widgets/custom_text_button.dart';
import 'package:nectarappmvvm/features/Auth/persentation/views/widgets/email_text_form_field.dart';
import 'package:nectarappmvvm/features/Auth/persentation/views/widgets/password_text_form_field.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Email",
            style: Styles.textStyle16,
          ),
          SizedBox(
            height: 8,
          ),
          EmailTextFormField(),
          SizedBox(
            height: 30,
          ),
          Text(
            "Password",
            style: Styles.textStyle16,
          ),
          SizedBox(
            height: 8,
          ),
          PasswordTextFormField(),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CustomTextButton(
                onPressed: () {
                  GoRouter.of(context).push(AppRoute.kForgetPasswordView);
                },
                text: 'Forget Password?',
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          CustomButton(onTap: () {}, text: 'Log In'),
        ],
      ),
    );
  }
}
