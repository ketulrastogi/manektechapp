import 'package:manektechapp/app/locator.dart';
import 'package:manektechapp/app/router.gr.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class RestaurantDetailViewModel extends BaseViewModel {
  final NavigationService _navigationService = locator<NavigationService>();

  navigateToImageGallaryScreen(String photosUrl) {
    _navigationService.navigateTo(
      Routes.imageGallaryView,
      arguments: ImageGallaryViewArguments(imageGallaryUrl: photosUrl),
    );
  }
}
