import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nectarappmvvm/core/database/cache/cache_helper.dart';
import 'package:nectarappmvvm/core/database/cache/cache_keys.dart';
import 'package:nectarappmvvm/core/service/services_locator.dart';
import 'package:nectarappmvvm/core/utils/app_route.dart';
import 'package:nectarappmvvm/core/utils/images.dart';
import 'package:nectarappmvvm/core/utils/styles.dart';
import 'package:nectarappmvvm/core/utils/widgets/custom_button.dart';

class OnboardingViewBody extends StatelessWidget {
  const OnboardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            Images.onboardingBackgroundImage,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Image.asset(Images.onboardingLogoImage),
            SizedBox(
              height: 8,
            ),
            Text(
              textAlign: TextAlign.center,
              'Welcome to our store',
              style: Styles.textStyle48,
            ),
            Text(
              'Ger your groceries in as fast as one hour',
              style: Styles.textStyle14.copyWith(
                color: Color.fromARGB(64, 252, 252, 178),
              ),
            ),
            SizedBox(
              height: 32,
            ),
            CustomButton(
              text: 'Get Started',
              onTap: () {
                getit<CacheHelper>().setBool(CacheKeys.onbordingVisited, true);
                GoRouter.of(context).push(AppRoute.kLoginView);
              },
            ),
            SizedBox(
              height: 100,
            )
          ],
        ),
      ),
    );
  }
}
