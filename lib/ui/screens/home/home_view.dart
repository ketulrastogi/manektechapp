import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:manektechapp/ui/widgets/restaurant_list/restaurant_list_view.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          title: Text(
            'Restaurant List',
            textAlign: TextAlign.center,
            style: GoogleFonts.nunito(
              textStyle: Theme.of(context)
                  .textTheme
                  .headline5
                  .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
          centerTitle: true,
          automaticallyImplyLeading: false,
          backgroundColor: Color(0xFF27DA94),
          elevation: 2.0,
        ),
        backgroundColor: Colors.grey.shade100,
        body: RestaurantListView(),
      ),
    );
  }
}
