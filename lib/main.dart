import 'package:flutter/material.dart';
import 'package:nectarappmvvm/core/database/cache/cache_helper.dart';
import 'package:nectarappmvvm/core/service/services_locator.dart';
import 'package:nectarappmvvm/core/utils/app_route.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); // before app is run it check that all resources are ready to run
  setupServicesLocator();
  await getit<CacheHelper>().initialize();
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
