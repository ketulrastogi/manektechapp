import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:manektechapp/ui/widgets/restaurant_list_item/restaurant_list_item_viewmodel.dart';
import 'package:rating_bar/rating_bar.dart';
import 'package:stacked/stacked.dart';

class RestaurantListItemView extends StatelessWidget {
  final String title;

  const RestaurantListItemView({Key key, this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<RestaurantListItemViewModel>.reactive(
      builder: (context, model, child) {
        return Container(
          // height: 96.0,
          padding: EdgeInsets.all(16.0),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade300,
                  blurRadius: 4.0,
                  spreadRadius: 1.0,
                  offset: Offset(0, 4),
                ),
              ]),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.longestSide / 10,
                child: Row(
                  children: <Widget>[
                    Container(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.network(
                          'https://b.zmtcdn.com/data/res_imagery/16781951_RESTAURANT_90aabc676c7f050b272d8cb69d9fdcac_c.jpg?fit=around%7C200%3A200&crop=200%3A200%3B%2A%2C%2A',
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 16.0,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.longestSide / 3.5,
                      child: Column(
                        // mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,

                        children: <Widget>[
                          Container(
                            // alignment: Alignment.centerLeft,
                            child: Text(
                              title,
                              style: GoogleFonts.nunito(
                                textStyle: Theme.of(context)
                                    .textTheme
                                    .subtitle1
                                    .copyWith(
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 2.0,
                          ),
                          RatingBar(
                            onRatingChanged: null,
                            isHalfAllowed: true,
                            maxRating: 5,
                            size: 20.0,
                            initialRating: 3.9,
                            halfFilledIcon: Icons.star_half,
                            halfFilledColor: Color(0xFFF2B926),
                            filledIcon: Icons.star,
                            filledColor: Color(0xFFF2B926),
                            emptyIcon: Icons.star_border,
                            emptyColor: Color(0xFFF2B926),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 48.0,
                width: 48.0,
                decoration: BoxDecoration(
                  color: Color(0xFF27DA94),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Center(
                  child: Icon(
                    Icons.location_on,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        );
      },
      viewModelBuilder: () => RestaurantListItemViewModel(),
    );
  }
}
