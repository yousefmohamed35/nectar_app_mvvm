import 'package:flutter/material.dart';
import 'package:nectarappmvvm/core/utils/styles.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    super.key,
    required this.text,
    this.color = const Color(0xff181725), this.onPressed,
  });
  final String text;
  final Color? color;
 final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: ButtonStyle(
            padding: WidgetStatePropertyAll(
          EdgeInsets.zero,
        )),
        onPressed: onPressed,
        child: Text(
          text,
          style: Styles.textStyle14.copyWith(color: color),
        ));
  }
}
