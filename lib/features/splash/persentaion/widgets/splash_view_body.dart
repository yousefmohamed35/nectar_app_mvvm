import 'package:flutter/material.dart';
import 'package:nectarappmvvm/core/utils/images.dart';

class SplahViewBody extends StatelessWidget {
  const SplahViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: Center(
        child: Image.asset(
          Images.splashImageLogo,
        ),
      ),
    );
  }
}
