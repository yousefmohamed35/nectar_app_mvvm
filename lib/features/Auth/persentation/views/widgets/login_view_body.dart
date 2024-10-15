import 'package:flutter/material.dart';
import 'package:nectarappmvvm/constants.dart';
import 'package:nectarappmvvm/core/utils/images.dart';
import 'package:nectarappmvvm/core/utils/styles.dart';
import 'package:nectarappmvvm/core/utils/widgets/custom_text_button.dart';
import 'package:nectarappmvvm/features/Auth/persentation/views/widgets/login_form.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({
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
          SizedBox(
            height: 80,
          ),
          Center(
            child: Image.asset(Images.carrotImage),
          ),
          SizedBox(
            height: 80,
          ),
          Text(
            "Login",
            style: Styles.textStyle26,
          ),
          Text(
            "Enter your emails and password",
            style: Styles.textStyle16,
          ),
          SizedBox(
            height: 30,
          ),
          LoginForm(),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                r"Don't have an account?",
                style: Styles.textStyle14,
              ),
              CustomTextButton(
                text: 'SignUP',
                color: Constants.kPrimaryColor,
              ),
            ],
          )
        ],
      ),
    );
  }
}
