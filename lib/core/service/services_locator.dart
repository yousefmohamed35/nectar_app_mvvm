import 'package:get_it/get_it.dart';
import 'package:nectarappmvvm/core/database/cache/cache_helper.dart';

final getit = GetIt.instance;

void setupServicesLocator() {
  getit.registerSingleton<CacheHelper>(CacheHelper());
}
