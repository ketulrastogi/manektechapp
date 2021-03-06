// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:manektechapp/app/thid_party_app.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:manektechapp/services/restaurant_db_service.dart';
import 'package:manektechapp/services/restaurant_service.dart';
import 'package:get_it/get_it.dart';

void $initGetIt(GetIt g, {String environment}) {
  final thirdPartyServicesModule = _$ThirdPartyServicesModule();
  g.registerLazySingleton<DialogService>(
      () => thirdPartyServicesModule.dialogService);
  g.registerLazySingleton<NavigationService>(
      () => thirdPartyServicesModule.navigationService);
  g.registerLazySingleton<RestaurantDBService>(
      () => thirdPartyServicesModule.restaurantDBService);
  g.registerLazySingleton<RestaurantService>(
      () => thirdPartyServicesModule.restaurantService);
  g.registerLazySingleton<SnackbarService>(
      () => thirdPartyServicesModule.snackBarService);
}

class _$ThirdPartyServicesModule extends ThirdPartyServicesModule {
  @override
  DialogService get dialogService => DialogService();
  @override
  NavigationService get navigationService => NavigationService();
  @override
  RestaurantDBService get restaurantDBService => RestaurantDBService();
  @override
  RestaurantService get restaurantService => RestaurantService();
  @override
  SnackbarService get snackBarService => SnackbarService();
}
