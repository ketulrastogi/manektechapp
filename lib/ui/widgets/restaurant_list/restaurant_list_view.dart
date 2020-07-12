import 'package:flutter/material.dart';
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
              return RestaurantListItemView(
                // title: 'Title Number $index',
                title: model.restaurantList[index]['restaurant']['name']
                    .toString(),
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
