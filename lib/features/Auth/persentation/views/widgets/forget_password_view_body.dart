import 'package:flutter/material.dart';
import 'package:nectarappmvvm/core/utils/images.dart';
import 'package:nectarappmvvm/core/utils/styles.dart';
import 'package:nectarappmvvm/features/Auth/persentation/views/widgets/forget_password_form.dart';

import 'custom_appbar.dart';

class ForgetPasswordViewBody extends StatelessWidget {
  const ForgetPasswordViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(Images.loginBackgroundImage),
          fit: BoxFit.cover,
        ),
      ),
      child: ListView(
        children: [
          CustomAppBar(),
          Image.asset(
            Images.carrotImage,
            height: MediaQuery.of(context).size.height * .14,
          ),
          SizedBox(
            height: 80,
          ),
          Text(
            'Forgot Password',
            style: Styles.textStyle26,
          ),
          Text(
            'Enter your email for verification process we will send 5 digits code to your email',
            style: Styles.textStyle16,
          ),
          SizedBox(
            height: 40,
          ),
          Text(
            'Email',
            style: Styles.textStyle16,
          ),
          SizedBox(
            height: 8,
          ),
          ForgetPasswordForm()
        ],
      ),
    );
  }
}
