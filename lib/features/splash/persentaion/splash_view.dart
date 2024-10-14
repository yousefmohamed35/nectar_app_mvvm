import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nectarappmvvm/constants.dart';
import 'package:nectarappmvvm/core/database/cache/cache_helper.dart';
import 'package:nectarappmvvm/core/database/cache/cache_keys.dart';
import 'package:nectarappmvvm/core/service/services_locator.dart';
import 'package:nectarappmvvm/core/utils/app_route.dart';
import 'widgets/splash_view_body.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView>
    with SingleTickerProviderStateMixin {
  late Animation<RelativeRect> _animation;
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    controlAnimation();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    excuteAnimation();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.kPrimaryColor,
      body: Stack(children: [
        PositionedTransition(rect: _animation, child: SplahViewBody()),
      ]),
    );
  }

  void controlAnimation() {
    _controller = AnimationController(
      duration: Duration(seconds: 2),
      vsync: this,
    );

    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        // Navigate to the OnboardingView after the animation is done
       navigationexecution();
      }
    });
  }
  

  void navigationexecution() {
     getit<CacheHelper>().getBool(CacheKeys.onbordingVisited) ?? false
         ? GoRouter.of(context).pushReplacement(AppRoute.kLoginView)
         : GoRouter.of(context).pushReplacement(AppRoute.kOnboardingView);
  }

  void excuteAnimation() {
    final screenHeight = MediaQuery.of(context).size.height;
    _animation = RelativeRectTween(
      begin:
          RelativeRect.fromLTRB(0, screenHeight, 0, 0), // Start from the bottom
      end: RelativeRect.fromLTRB(0, screenHeight / 2 - 50, 0,
          screenHeight / 2 - 50), // Move to the center
    ).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );
    _controller.forward();
  }
}
