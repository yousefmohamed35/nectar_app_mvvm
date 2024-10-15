import 'package:go_router/go_router.dart';
import 'package:nectarappmvvm/features/Auth/persentation/views/forget_password_view.dart';
import 'package:nectarappmvvm/features/Auth/persentation/views/login_view.dart';
import 'package:nectarappmvvm/features/onboarding/persentation/views/onboarding_view.dart';

import '../../features/splash/persentaion/splash_view.dart';

abstract class AppRoute {
  static const kHomeView = '/homeView';
  static const kOnboardingView = '/onboardingView';
  static const kLoginView = '/loginView';
   static const kForgetPasswordView = '/forgetPasswordView';

  static final route = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashView(),
    ),
    GoRoute(
      path: kOnboardingView,
      builder: (context, state) => const OnboardingView(),
    ),
    GoRoute(
      path: kLoginView,
      builder: (context, state) => const LoginView(),
    ),
     GoRoute(
      path: kForgetPasswordView,
      builder: (context, state) => const ForgetPasswordView(),
    ),
  ]);
}
