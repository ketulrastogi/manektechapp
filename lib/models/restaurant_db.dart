import 'package:moor/moor.dart';
import 'package:moor_flutter/moor_flutter.dart';

part 'restaurant_db.g.dart';

class Restaurants extends Table {
  // autoIncrement automatically sets this to be the primary key
  // If the length constraint is not fulfilled, the Task will not
  // be inserted into the database and an exception will be thrown.
  IntColumn get id => integer()();
  TextColumn get name => text().withLength(min: 1, max: 50)();
  TextColumn get thumb => text().withLength(min: 1, max: 300)();
  TextColumn get address => text().withLength(min: 1, max: 150)();
  TextColumn get locality => text().withLength(min: 1, max: 150)();
  TextColumn get city => text().withLength(min: 1, max: 150)();
  TextColumn get zipcode => text().withLength(min: 1, max: 150)();
  TextColumn get latitude => text().withLength(min: 1, max: 50)();
  TextColumn get longitude => text().withLength(min: 1, max: 50)();
  TextColumn get aggregateRating => text().withLength(min: 1, max: 50)();
  IntColumn get totalVotes => integer()();
  TextColumn get featuredImage => text().withLength(min: 1, max: 300)();
  TextColumn get photosUrl => text().withLength(min: 1, max: 300)();
  TextColumn get phoneNumbers => text().withLength(min: 1, max: 100)();
}

@UseMoor(tables: [Restaurants])
// _$AppDatabase is the name of the generated class
class AppDatabase extends _$AppDatabase {
  AppDatabase()
      : super((FlutterQueryExecutor.inDatabaseFolder(
          path: 'db.sqlite',
          logStatements: true,
        )));

  @override
  int get schemaVersion => 1;

  Future<List<Restaurant>> getAllRestaurants() => select(restaurants).get();
  Future insertRestaurant(Restaurant restaurant) =>
      into(restaurants).insert(restaurant);
  Future deleteAllRestaurants() => delete(restaurants).go();
}
