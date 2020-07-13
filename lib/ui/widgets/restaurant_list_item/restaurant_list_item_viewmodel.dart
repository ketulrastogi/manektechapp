import 'package:manektechapp/app/locator.dart';
import 'package:manektechapp/app/router.gr.dart';
import 'package:manektechapp/models/restaurant_model.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class RestaurantListItemViewModel extends BaseViewModel {
  final NavigationService _navigationService = locator<NavigationService>();

  navigateToDetailScreen(RestaurantModel restaurant) {
    print(restaurant.featuredImage);
    _navigationService.navigateTo(Routes.restaurantDetailView,
        arguments: RestaurantDetailViewArguments(restaurant: restaurant));
  }
}
