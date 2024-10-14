import 'package:flutter/material.dart';
import 'package:nectarappmvvm/core/utils/app_route.dart';


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
