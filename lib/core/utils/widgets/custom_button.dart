import 'package:flutter/material.dart';
import 'package:nectarappmvvm/constants.dart';

import '../styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key, required this.text, this.onTap,
  });
  final String text;
 final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        width: double.infinity,
        height: 67,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Constants.kPrimaryColor,
        ),
        child: Text(
          text,
          style: Styles.textStyle18,
        ),
      ),
    );
  }
}
