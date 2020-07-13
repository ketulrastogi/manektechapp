import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:manektechapp/ui/widgets/restaurant_list/restaurant_list_viewmodel.dart';
import 'package:manektechapp/ui/widgets/restaurant_list_item/restaurant_list_item_view.dart';
import 'package:stacked/stacked.dart';

class RestaurantListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<RestaurantListViewModel>.reactive(
      onModelReady: (model) => model.getRestaurants(),
      builder: (context, model, child) {
        return Scrollbar(
          child: ListView.separated(
            padding: EdgeInsets.all(16.0),
            itemCount: model.totalRestaurants,
            itemBuilder: (context, index) {
              print(
                  ' Index: $index, phoneNumbers: ${model.restaurantList[index].phoneNumbers}');

              if (model.totalRestaurants == 0) {
                return Center(
                  child: Text(
                    'No restaurants available.',
                    style: GoogleFonts.nunito(
                      textStyle: Theme.of(context).textTheme.subtitle1.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ),
                );
              }

              return RestaurantListItemView(
                // title: 'Title Number $index',
                restaurant: model.restaurantList[index],
              );
            },
            separatorBuilder: (context, index) {
              return SizedBox(
                height: 12.0,
              );
            },
          ),
        );
      },
      viewModelBuilder: () => RestaurantListViewModel(),
    );
  }
}
