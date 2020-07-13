// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_route/auto_route.dart';
import 'package:manektechapp/ui/screens/home/home_view.dart';
import 'package:manektechapp/ui/screens/restaurant_detail/restaurant_detail_view.dart';
import 'package:manektechapp/models/restaurant_model.dart';
import 'package:manektechapp/ui/screens/image_gallary/image_gallary_view.dart';

abstract class Routes {
  static const homeView = '/';
  static const restaurantDetailView = '/restaurant-detail-view';
  static const imageGallaryView = '/image-gallary-view';
  static const all = {
    homeView,
    restaurantDetailView,
    imageGallaryView,
  };
}

class Router extends RouterBase {
  @override
  Set<String> get allRoutes => Routes.all;

  @Deprecated('call ExtendedNavigator.ofRouter<Router>() directly')
  static ExtendedNavigatorState get navigator =>
      ExtendedNavigator.ofRouter<Router>();

  @override
  Route<dynamic> onGenerateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case Routes.homeView:
        return MaterialPageRoute<dynamic>(
          builder: (context) => HomeView(),
          settings: settings,
        );
      case Routes.restaurantDetailView:
        if (hasInvalidArgs<RestaurantDetailViewArguments>(args)) {
          return misTypedArgsRoute<RestaurantDetailViewArguments>(args);
        }
        final typedArgs = args as RestaurantDetailViewArguments ??
            RestaurantDetailViewArguments();
        return MaterialPageRoute<dynamic>(
          builder: (context) => RestaurantDetailView(
              key: typedArgs.key, restaurant: typedArgs.restaurant),
          settings: settings,
        );
      case Routes.imageGallaryView:
        if (hasInvalidArgs<ImageGallaryViewArguments>(args)) {
          return misTypedArgsRoute<ImageGallaryViewArguments>(args);
        }
        final typedArgs =
            args as ImageGallaryViewArguments ?? ImageGallaryViewArguments();
        return MaterialPageRoute<dynamic>(
          builder: (context) => ImageGallaryView(
              key: typedArgs.key, imageGallaryUrl: typedArgs.imageGallaryUrl),
          settings: settings,
        );
      default:
        return unknownRoutePage(settings.name);
    }
  }
}

// *************************************************************************
// Arguments holder classes
// **************************************************************************

//RestaurantDetailView arguments holder class
class RestaurantDetailViewArguments {
  final Key key;
  final RestaurantModel restaurant;
  RestaurantDetailViewArguments({this.key, this.restaurant});
}

//ImageGallaryView arguments holder class
class ImageGallaryViewArguments {
  final Key key;
  final String imageGallaryUrl;
  ImageGallaryViewArguments({this.key, this.imageGallaryUrl});
}
