import 'package:flutter/material.dart';
import 'package:nectarappmvvm/constants.dart';
import 'package:nectarappmvvm/core/utils/images.dart';
import 'package:nectarappmvvm/core/utils/styles.dart';

import 'widgets/email_text_form_field.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Images.loginBackgroundImage),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 80,
            ),
            Center(child: Image.asset(Images.carrotImage)),
            SizedBox(
              height: 80,
            ),
            Text(
              "Login",
              style: Styles.textStyle26,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Enter your emails and password",
              style: Styles.textStyle16,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Email",
              style: Styles.textStyle16,
            ),
            EmailTextFormField()
          ],
        ),
      ),
    );
  }
}

