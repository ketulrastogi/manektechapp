import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:manektechapp/models/restaurant_model.dart';
import 'package:manektechapp/ui/screens/restaurant_detail/restaurant_detail_viewmodel.dart';
import 'package:rating_bar/rating_bar.dart';
import 'package:stacked/stacked.dart';

class RestaurantDetailView extends StatelessWidget {
  final RestaurantModel restaurant;

  const RestaurantDetailView({Key key, this.restaurant}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    print(restaurant.name);
    return OrientationBuilder(builder: (context, orientation) {
      if (orientation == Orientation.portrait) {
        return RestaurantDetailPortrait(restaurant: restaurant);
      } else {
        return RestaurantDetailLandscape(restaurant: restaurant);
      }
    });
  }
}

class RestaurantDetailPortrait extends StatelessWidget {
  const RestaurantDetailPortrait({
    Key key,
    @required this.restaurant,
  }) : super(key: key);

  final RestaurantModel restaurant;

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<RestaurantDetailViewModel>.reactive(
      builder: (context, model, child) {
        return SafeArea(
          child: Scaffold(
            body: ListView(
              children: <Widget>[
                Container(
                  child: Stack(
                    children: <Widget>[
                      InkWell(
                        onTap: () {
                          model.navigateToImageGallaryScreen(
                              restaurant.photosUrl);
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height / 3,
                          child: CachedNetworkImage(
                            fit: BoxFit.fill,
                            imageUrl: restaurant.featuredImage,
                            placeholder: (context, url) =>
                                Center(child: CircularProgressIndicator()),
                            errorWidget: (context, url, error) =>
                                Icon(Icons.error),
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(16.0),
                        child: Text(
                          'Back',
                          style: GoogleFonts.nunito(
                            textStyle:
                                Theme.of(context).textTheme.headline6.copyWith(
                                      fontWeight: FontWeight.bold,
                                      // color: Colors.white,
                                    ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 24.0,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    restaurant.name,
                    style: GoogleFonts.nunito(
                      textStyle: Theme.of(context).textTheme.headline5.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 4.0,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    restaurant.phoneNumbers.toString(),
                    style: GoogleFonts.nunito(
                      textStyle: Theme.of(context).textTheme.subtitle1.copyWith(
                            fontWeight: FontWeight.w500,
                            // color: Colors.grey.shade700,
                          ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 12.0,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    children: <Widget>[
                      Container(
                        child: RatingBar.readOnly(
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
                      ),
                      SizedBox(
                        width: 8.0,
                      ),
                      Container(
                        child: Text(
                          '${restaurant.aggregateRating} (${restaurant.totalVotes} ratings)',
                          style: GoogleFonts.nunito(
                            textStyle:
                                Theme.of(context).textTheme.subtitle1.copyWith(
                                      fontWeight: FontWeight.w600,
                                    ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 16.0,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        child: Text(
                          'Description',
                          style: GoogleFonts.nunito(
                            textStyle:
                                Theme.of(context).textTheme.subtitle1.copyWith(
                                      fontWeight: FontWeight.bold,
                                    ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 4.0,
                      ),
                      Container(
                        child: Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                          maxLines: 5,
                          style: GoogleFonts.nunito(
                            textStyle:
                                Theme.of(context).textTheme.bodyText2.copyWith(
                                    // fontWeight: FontWeight.w500,
                                    ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 16.0,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        child: Text(
                          'Address',
                          style: GoogleFonts.nunito(
                            textStyle:
                                Theme.of(context).textTheme.subtitle1.copyWith(
                                      fontWeight: FontWeight.bold,
                                    ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 4.0,
                      ),
                      Container(
                        child: Text(
                          '${restaurant.address}, ${restaurant.locality}, ${restaurant.city}, ${restaurant.zipcode}.',
                          maxLines: 5,
                          style: GoogleFonts.nunito(
                            textStyle:
                                Theme.of(context).textTheme.bodyText2.copyWith(
                                    // fontWeight: FontWeight.w500,
                                    ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
      viewModelBuilder: () => RestaurantDetailViewModel(),
    );
  }
}

class RestaurantDetailLandscape extends StatelessWidget {
  const RestaurantDetailLandscape({
    Key key,
    @required this.restaurant,
  }) : super(key: key);

  final RestaurantModel restaurant;

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<RestaurantDetailViewModel>.reactive(
      builder: (context, model, child) {
        return SafeArea(
          child: Scaffold(
            body: Row(
              children: <Widget>[
                Container(
                  child: Stack(
                    children: <Widget>[
                      InkWell(
                        onTap: () {
                          model.navigateToImageGallaryScreen(
                              restaurant.photosUrl);
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width / 2,
                          height: MediaQuery.of(context).size.height,
                          child: CachedNetworkImage(
                            fit: BoxFit.fill,
                            imageUrl: restaurant.featuredImage,
                            placeholder: (context, url) =>
                                Center(child: CircularProgressIndicator()),
                            errorWidget: (context, url, error) =>
                                Icon(Icons.error),
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(16.0),
                        child: Text(
                          'Back',
                          style: GoogleFonts.nunito(
                            textStyle:
                                Theme.of(context).textTheme.headline6.copyWith(
                                      fontWeight: FontWeight.bold,
                                      // color: Colors.white,
                                    ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 2,
                  height: MediaQuery.of(context).size.height,
                  child: ListView(
                    padding: EdgeInsets.only(top: 16.0),
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 16.0),
                        child: Text(
                          restaurant.name,
                          style: GoogleFonts.nunito(
                            textStyle:
                                Theme.of(context).textTheme.headline5.copyWith(
                                      fontWeight: FontWeight.bold,
                                    ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 4.0,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 16.0),
                        child: Text(
                          restaurant.phoneNumbers,
                          style: GoogleFonts.nunito(
                            textStyle:
                                Theme.of(context).textTheme.subtitle1.copyWith(
                                      fontWeight: FontWeight.w500,
                                      // color: Colors.grey.shade700,
                                    ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 12.0,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 16.0),
                        child: Row(
                          children: <Widget>[
                            Container(
                              child: RatingBar.readOnly(
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
                            ),
                            SizedBox(
                              width: 8.0,
                            ),
                            Container(
                              child: Text(
                                '${restaurant.aggregateRating} (${restaurant.totalVotes} ratings)',
                                style: GoogleFonts.nunito(
                                  textStyle: Theme.of(context)
                                      .textTheme
                                      .subtitle1
                                      .copyWith(
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 16.0,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              child: Text(
                                'Description',
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
                              height: 4.0,
                            ),
                            Container(
                              child: Text(
                                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                                maxLines: 5,
                                style: GoogleFonts.nunito(
                                  textStyle: Theme.of(context)
                                      .textTheme
                                      .bodyText2
                                      .copyWith(
                                          // fontWeight: FontWeight.w500,
                                          ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 16.0,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              child: Text(
                                'Address',
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
                              height: 4.0,
                            ),
                            Container(
                              child: Text(
                                '${restaurant.address}, ${restaurant.locality}, ${restaurant.city}, ${restaurant.zipcode}.',
                                maxLines: 5,
                                style: GoogleFonts.nunito(
                                  textStyle: Theme.of(context)
                                      .textTheme
                                      .bodyText2
                                      .copyWith(
                                          // fontWeight: FontWeight.w500,
                                          ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
      viewModelBuilder: () => RestaurantDetailViewModel(),
    );
  }
}
