import 'package:flutter/material.dart';
import 'package:nectarappmvvm/core/utils/app_route.dart';
import 'package:nectarappmvvm/features/splash/persentaion/splash_view.dart';

void main() {
  runApp(const NectarApp());
}

class NectarApp extends StatelessWidget {
  const NectarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRoute.route,
      debugShowCheckedModeBanner: false,
    );
  }
}
