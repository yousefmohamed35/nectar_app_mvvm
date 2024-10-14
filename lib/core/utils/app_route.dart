import 'package:go_router/go_router.dart';
import 'package:nectarappmvvm/features/onboarding/persentation/views/onboarding_view.dart';

import '../../features/splash/persentaion/splash_view.dart';

abstract class AppRoute {
  static const kHomeView = '/homeView';
   static const konboardingView = '/onboardingView';

  static final route = GoRouter(routes: [
     GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
       GoRoute(
        path: konboardingView,
        builder: (context, state) => const OnboardingView(),
      ),
  ]);
}
