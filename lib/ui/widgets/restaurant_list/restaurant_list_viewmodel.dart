import 'package:manektechapp/app/locator.dart';
import 'package:manektechapp/models/restaurant_model.dart';
import 'package:manektechapp/services/restaurant_service.dart';
import 'package:stacked/stacked.dart';

class RestaurantListViewModel extends BaseViewModel {
  final RestaurantService _restaurantService = locator<RestaurantService>();
  int _totalRestaurants = 0;
  List<RestaurantModel> _restaurantList;
  List<RestaurantModel> get restaurantList => _restaurantList;
  int get totalRestaurants => _totalRestaurants;

  getRestaurants() async {
    _restaurantList = await _restaurantService.getRestaurants();
    _totalRestaurants = _restaurantList.length;
    notifyListeners();
  }
}
