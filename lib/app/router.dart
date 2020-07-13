import 'package:auto_route/auto_route_annotations.dart';
import 'package:flutter/material.dart';
import 'package:manektechapp/app/router.gr.dart';
import 'package:manektechapp/ui/screens/image_gallary/image_gallary_view.dart';
import 'package:manektechapp/ui/screens/restaurant_detail/restaurant_detail_view.dart';
import '../ui/screens/home/home_view.dart';

@MaterialAutoRouter()
class $Router {
  @initial
  HomeView homeView;

  RestaurantDetailView restaurantDetailView;

  ImageGallaryView imageGallaryView;
}
