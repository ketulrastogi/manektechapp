// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restaurant_db.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class Restaurant extends DataClass implements Insertable<Restaurant> {
  final int id;
  final String name;
  final String thumb;
  final String address;
  final String locality;
  final String city;
  final String zipcode;
  final String latitude;
  final String longitude;
  final String aggregateRating;
  final int totalVotes;
  final String featuredImage;
  final String photosUrl;
  Restaurant(
      {@required this.id,
      @required this.name,
      @required this.thumb,
      @required this.address,
      @required this.locality,
      @required this.city,
      @required this.zipcode,
      @required this.latitude,
      @required this.longitude,
      @required this.aggregateRating,
      @required this.totalVotes,
      @required this.featuredImage,
      @required this.photosUrl});
  factory Restaurant.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return Restaurant(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      name: stringType.mapFromDatabaseResponse(data['${effectivePrefix}name']),
      thumb:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}thumb']),
      address:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}address']),
      locality: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}locality']),
      city: stringType.mapFromDatabaseResponse(data['${effectivePrefix}city']),
      zipcode:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}zipcode']),
      latitude: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}latitude']),
      longitude: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}longitude']),
      aggregateRating: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}aggregate_rating']),
      totalVotes: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}total_votes']),
      featuredImage: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}featured_image']),
      photosUrl: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}photos_url']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || name != null) {
      map['name'] = Variable<String>(name);
    }
    if (!nullToAbsent || thumb != null) {
      map['thumb'] = Variable<String>(thumb);
    }
    if (!nullToAbsent || address != null) {
      map['address'] = Variable<String>(address);
    }
    if (!nullToAbsent || locality != null) {
      map['locality'] = Variable<String>(locality);
    }
    if (!nullToAbsent || city != null) {
      map['city'] = Variable<String>(city);
    }
    if (!nullToAbsent || zipcode != null) {
      map['zipcode'] = Variable<String>(zipcode);
    }
    if (!nullToAbsent || latitude != null) {
      map['latitude'] = Variable<String>(latitude);
    }
    if (!nullToAbsent || longitude != null) {
      map['longitude'] = Variable<String>(longitude);
    }
    if (!nullToAbsent || aggregateRating != null) {
      map['aggregate_rating'] = Variable<String>(aggregateRating);
    }
    if (!nullToAbsent || totalVotes != null) {
      map['total_votes'] = Variable<int>(totalVotes);
    }
    if (!nullToAbsent || featuredImage != null) {
      map['featured_image'] = Variable<String>(featuredImage);
    }
    if (!nullToAbsent || photosUrl != null) {
      map['photos_url'] = Variable<String>(photosUrl);
    }
    return map;
  }

  RestaurantsCompanion toCompanion(bool nullToAbsent) {
    return RestaurantsCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      thumb:
          thumb == null && nullToAbsent ? const Value.absent() : Value(thumb),
      address: address == null && nullToAbsent
          ? const Value.absent()
          : Value(address),
      locality: locality == null && nullToAbsent
          ? const Value.absent()
          : Value(locality),
      city: city == null && nullToAbsent ? const Value.absent() : Value(city),
      zipcode: zipcode == null && nullToAbsent
          ? const Value.absent()
          : Value(zipcode),
      latitude: latitude == null && nullToAbsent
          ? const Value.absent()
          : Value(latitude),
      longitude: longitude == null && nullToAbsent
          ? const Value.absent()
          : Value(longitude),
      aggregateRating: aggregateRating == null && nullToAbsent
          ? const Value.absent()
          : Value(aggregateRating),
      totalVotes: totalVotes == null && nullToAbsent
          ? const Value.absent()
          : Value(totalVotes),
      featuredImage: featuredImage == null && nullToAbsent
          ? const Value.absent()
          : Value(featuredImage),
      photosUrl: photosUrl == null && nullToAbsent
          ? const Value.absent()
          : Value(photosUrl),
    );
  }

  factory Restaurant.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Restaurant(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      thumb: serializer.fromJson<String>(json['thumb']),
      address: serializer.fromJson<String>(json['address']),
      locality: serializer.fromJson<String>(json['locality']),
      city: serializer.fromJson<String>(json['city']),
      zipcode: serializer.fromJson<String>(json['zipcode']),
      latitude: serializer.fromJson<String>(json['latitude']),
      longitude: serializer.fromJson<String>(json['longitude']),
      aggregateRating: serializer.fromJson<String>(json['aggregateRating']),
      totalVotes: serializer.fromJson<int>(json['totalVotes']),
      featuredImage: serializer.fromJson<String>(json['featuredImage']),
      photosUrl: serializer.fromJson<String>(json['photosUrl']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'thumb': serializer.toJson<String>(thumb),
      'address': serializer.toJson<String>(address),
      'locality': serializer.toJson<String>(locality),
      'city': serializer.toJson<String>(city),
      'zipcode': serializer.toJson<String>(zipcode),
      'latitude': serializer.toJson<String>(latitude),
      'longitude': serializer.toJson<String>(longitude),
      'aggregateRating': serializer.toJson<String>(aggregateRating),
      'totalVotes': serializer.toJson<int>(totalVotes),
      'featuredImage': serializer.toJson<String>(featuredImage),
      'photosUrl': serializer.toJson<String>(photosUrl),
    };
  }

  Restaurant copyWith(
          {int id,
          String name,
          String thumb,
          String address,
          String locality,
          String city,
          String zipcode,
          String latitude,
          String longitude,
          String aggregateRating,
          int totalVotes,
          String featuredImage,
          String photosUrl}) =>
      Restaurant(
        id: id ?? this.id,
        name: name ?? this.name,
        thumb: thumb ?? this.thumb,
        address: address ?? this.address,
        locality: locality ?? this.locality,
        city: city ?? this.city,
        zipcode: zipcode ?? this.zipcode,
        latitude: latitude ?? this.latitude,
        longitude: longitude ?? this.longitude,
        aggregateRating: aggregateRating ?? this.aggregateRating,
        totalVotes: totalVotes ?? this.totalVotes,
        featuredImage: featuredImage ?? this.featuredImage,
        photosUrl: photosUrl ?? this.photosUrl,
      );
  @override
  String toString() {
    return (StringBuffer('Restaurant(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('thumb: $thumb, ')
          ..write('address: $address, ')
          ..write('locality: $locality, ')
          ..write('city: $city, ')
          ..write('zipcode: $zipcode, ')
          ..write('latitude: $latitude, ')
          ..write('longitude: $longitude, ')
          ..write('aggregateRating: $aggregateRating, ')
          ..write('totalVotes: $totalVotes, ')
          ..write('featuredImage: $featuredImage, ')
          ..write('photosUrl: $photosUrl')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          name.hashCode,
          $mrjc(
              thumb.hashCode,
              $mrjc(
                  address.hashCode,
                  $mrjc(
                      locality.hashCode,
                      $mrjc(
                          city.hashCode,
                          $mrjc(
                              zipcode.hashCode,
                              $mrjc(
                                  latitude.hashCode,
                                  $mrjc(
                                      longitude.hashCode,
                                      $mrjc(
                                          aggregateRating.hashCode,
                                          $mrjc(
                                              totalVotes.hashCode,
                                              $mrjc(
                                                  featuredImage.hashCode,
                                                  photosUrl
                                                      .hashCode)))))))))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is Restaurant &&
          other.id == this.id &&
          other.name == this.name &&
          other.thumb == this.thumb &&
          other.address == this.address &&
          other.locality == this.locality &&
          other.city == this.city &&
          other.zipcode == this.zipcode &&
          other.latitude == this.latitude &&
          other.longitude == this.longitude &&
          other.aggregateRating == this.aggregateRating &&
          other.totalVotes == this.totalVotes &&
          other.featuredImage == this.featuredImage &&
          other.photosUrl == this.photosUrl);
}

class RestaurantsCompanion extends UpdateCompanion<Restaurant> {
  final Value<int> id;
  final Value<String> name;
  final Value<String> thumb;
  final Value<String> address;
  final Value<String> locality;
  final Value<String> city;
  final Value<String> zipcode;
  final Value<String> latitude;
  final Value<String> longitude;
  final Value<String> aggregateRating;
  final Value<int> totalVotes;
  final Value<String> featuredImage;
  final Value<String> photosUrl;
  const RestaurantsCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.thumb = const Value.absent(),
    this.address = const Value.absent(),
    this.locality = const Value.absent(),
    this.city = const Value.absent(),
    this.zipcode = const Value.absent(),
    this.latitude = const Value.absent(),
    this.longitude = const Value.absent(),
    this.aggregateRating = const Value.absent(),
    this.totalVotes = const Value.absent(),
    this.featuredImage = const Value.absent(),
    this.photosUrl = const Value.absent(),
  });
  RestaurantsCompanion.insert({
    @required int id,
    @required String name,
    @required String thumb,
    @required String address,
    @required String locality,
    @required String city,
    @required String zipcode,
    @required String latitude,
    @required String longitude,
    @required String aggregateRating,
    @required int totalVotes,
    @required String featuredImage,
    @required String photosUrl,
  })  : id = Value(id),
        name = Value(name),
        thumb = Value(thumb),
        address = Value(address),
        locality = Value(locality),
        city = Value(city),
        zipcode = Value(zipcode),
        latitude = Value(latitude),
        longitude = Value(longitude),
        aggregateRating = Value(aggregateRating),
        totalVotes = Value(totalVotes),
        featuredImage = Value(featuredImage),
        photosUrl = Value(photosUrl);
  static Insertable<Restaurant> custom({
    Expression<int> id,
    Expression<String> name,
    Expression<String> thumb,
    Expression<String> address,
    Expression<String> locality,
    Expression<String> city,
    Expression<String> zipcode,
    Expression<String> latitude,
    Expression<String> longitude,
    Expression<String> aggregateRating,
    Expression<int> totalVotes,
    Expression<String> featuredImage,
    Expression<String> photosUrl,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (thumb != null) 'thumb': thumb,
      if (address != null) 'address': address,
      if (locality != null) 'locality': locality,
      if (city != null) 'city': city,
      if (zipcode != null) 'zipcode': zipcode,
      if (latitude != null) 'latitude': latitude,
      if (longitude != null) 'longitude': longitude,
      if (aggregateRating != null) 'aggregate_rating': aggregateRating,
      if (totalVotes != null) 'total_votes': totalVotes,
      if (featuredImage != null) 'featured_image': featuredImage,
      if (photosUrl != null) 'photos_url': photosUrl,
    });
  }

  RestaurantsCompanion copyWith(
      {Value<int> id,
      Value<String> name,
      Value<String> thumb,
      Value<String> address,
      Value<String> locality,
      Value<String> city,
      Value<String> zipcode,
      Value<String> latitude,
      Value<String> longitude,
      Value<String> aggregateRating,
      Value<int> totalVotes,
      Value<String> featuredImage,
      Value<String> photosUrl}) {
    return RestaurantsCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      thumb: thumb ?? this.thumb,
      address: address ?? this.address,
      locality: locality ?? this.locality,
      city: city ?? this.city,
      zipcode: zipcode ?? this.zipcode,
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
      aggregateRating: aggregateRating ?? this.aggregateRating,
      totalVotes: totalVotes ?? this.totalVotes,
      featuredImage: featuredImage ?? this.featuredImage,
      photosUrl: photosUrl ?? this.photosUrl,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (thumb.present) {
      map['thumb'] = Variable<String>(thumb.value);
    }
    if (address.present) {
      map['address'] = Variable<String>(address.value);
    }
    if (locality.present) {
      map['locality'] = Variable<String>(locality.value);
    }
    if (city.present) {
      map['city'] = Variable<String>(city.value);
    }
    if (zipcode.present) {
      map['zipcode'] = Variable<String>(zipcode.value);
    }
    if (latitude.present) {
      map['latitude'] = Variable<String>(latitude.value);
    }
    if (longitude.present) {
      map['longitude'] = Variable<String>(longitude.value);
    }
    if (aggregateRating.present) {
      map['aggregate_rating'] = Variable<String>(aggregateRating.value);
    }
    if (totalVotes.present) {
      map['total_votes'] = Variable<int>(totalVotes.value);
    }
    if (featuredImage.present) {
      map['featured_image'] = Variable<String>(featuredImage.value);
    }
    if (photosUrl.present) {
      map['photos_url'] = Variable<String>(photosUrl.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('RestaurantsCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('thumb: $thumb, ')
          ..write('address: $address, ')
          ..write('locality: $locality, ')
          ..write('city: $city, ')
          ..write('zipcode: $zipcode, ')
          ..write('latitude: $latitude, ')
          ..write('longitude: $longitude, ')
          ..write('aggregateRating: $aggregateRating, ')
          ..write('totalVotes: $totalVotes, ')
          ..write('featuredImage: $featuredImage, ')
          ..write('photosUrl: $photosUrl')
          ..write(')'))
        .toString();
  }
}

class $RestaurantsTable extends Restaurants
    with TableInfo<$RestaurantsTable, Restaurant> {
  final GeneratedDatabase _db;
  final String _alias;
  $RestaurantsTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn(
      'id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _nameMeta = const VerificationMeta('name');
  GeneratedTextColumn _name;
  @override
  GeneratedTextColumn get name => _name ??= _constructName();
  GeneratedTextColumn _constructName() {
    return GeneratedTextColumn('name', $tableName, false,
        minTextLength: 1, maxTextLength: 50);
  }

  final VerificationMeta _thumbMeta = const VerificationMeta('thumb');
  GeneratedTextColumn _thumb;
  @override
  GeneratedTextColumn get thumb => _thumb ??= _constructThumb();
  GeneratedTextColumn _constructThumb() {
    return GeneratedTextColumn('thumb', $tableName, false,
        minTextLength: 1, maxTextLength: 300);
  }

  final VerificationMeta _addressMeta = const VerificationMeta('address');
  GeneratedTextColumn _address;
  @override
  GeneratedTextColumn get address => _address ??= _constructAddress();
  GeneratedTextColumn _constructAddress() {
    return GeneratedTextColumn('address', $tableName, false,
        minTextLength: 1, maxTextLength: 150);
  }

  final VerificationMeta _localityMeta = const VerificationMeta('locality');
  GeneratedTextColumn _locality;
  @override
  GeneratedTextColumn get locality => _locality ??= _constructLocality();
  GeneratedTextColumn _constructLocality() {
    return GeneratedTextColumn('locality', $tableName, false,
        minTextLength: 1, maxTextLength: 150);
  }

  final VerificationMeta _cityMeta = const VerificationMeta('city');
  GeneratedTextColumn _city;
  @override
  GeneratedTextColumn get city => _city ??= _constructCity();
  GeneratedTextColumn _constructCity() {
    return GeneratedTextColumn('city', $tableName, false,
        minTextLength: 1, maxTextLength: 150);
  }

  final VerificationMeta _zipcodeMeta = const VerificationMeta('zipcode');
  GeneratedTextColumn _zipcode;
  @override
  GeneratedTextColumn get zipcode => _zipcode ??= _constructZipcode();
  GeneratedTextColumn _constructZipcode() {
    return GeneratedTextColumn('zipcode', $tableName, false,
        minTextLength: 1, maxTextLength: 150);
  }

  final VerificationMeta _latitudeMeta = const VerificationMeta('latitude');
  GeneratedTextColumn _latitude;
  @override
  GeneratedTextColumn get latitude => _latitude ??= _constructLatitude();
  GeneratedTextColumn _constructLatitude() {
    return GeneratedTextColumn('latitude', $tableName, false,
        minTextLength: 1, maxTextLength: 50);
  }

  final VerificationMeta _longitudeMeta = const VerificationMeta('longitude');
  GeneratedTextColumn _longitude;
  @override
  GeneratedTextColumn get longitude => _longitude ??= _constructLongitude();
  GeneratedTextColumn _constructLongitude() {
    return GeneratedTextColumn('longitude', $tableName, false,
        minTextLength: 1, maxTextLength: 50);
  }

  final VerificationMeta _aggregateRatingMeta =
      const VerificationMeta('aggregateRating');
  GeneratedTextColumn _aggregateRating;
  @override
  GeneratedTextColumn get aggregateRating =>
      _aggregateRating ??= _constructAggregateRating();
  GeneratedTextColumn _constructAggregateRating() {
    return GeneratedTextColumn('aggregate_rating', $tableName, false,
        minTextLength: 1, maxTextLength: 50);
  }

  final VerificationMeta _totalVotesMeta = const VerificationMeta('totalVotes');
  GeneratedIntColumn _totalVotes;
  @override
  GeneratedIntColumn get totalVotes => _totalVotes ??= _constructTotalVotes();
  GeneratedIntColumn _constructTotalVotes() {
    return GeneratedIntColumn(
      'total_votes',
      $tableName,
      false,
    );
  }

  final VerificationMeta _featuredImageMeta =
      const VerificationMeta('featuredImage');
  GeneratedTextColumn _featuredImage;
  @override
  GeneratedTextColumn get featuredImage =>
      _featuredImage ??= _constructFeaturedImage();
  GeneratedTextColumn _constructFeaturedImage() {
    return GeneratedTextColumn('featured_image', $tableName, false,
        minTextLength: 1, maxTextLength: 300);
  }

  final VerificationMeta _photosUrlMeta = const VerificationMeta('photosUrl');
  GeneratedTextColumn _photosUrl;
  @override
  GeneratedTextColumn get photosUrl => _photosUrl ??= _constructPhotosUrl();
  GeneratedTextColumn _constructPhotosUrl() {
    return GeneratedTextColumn('photos_url', $tableName, false,
        minTextLength: 1, maxTextLength: 300);
  }

  @override
  List<GeneratedColumn> get $columns => [
        id,
        name,
        thumb,
        address,
        locality,
        city,
        zipcode,
        latitude,
        longitude,
        aggregateRating,
        totalVotes,
        featuredImage,
        photosUrl
      ];
  @override
  $RestaurantsTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'restaurants';
  @override
  final String actualTableName = 'restaurants';
  @override
  VerificationContext validateIntegrity(Insertable<Restaurant> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name'], _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('thumb')) {
      context.handle(
          _thumbMeta, thumb.isAcceptableOrUnknown(data['thumb'], _thumbMeta));
    } else if (isInserting) {
      context.missing(_thumbMeta);
    }
    if (data.containsKey('address')) {
      context.handle(_addressMeta,
          address.isAcceptableOrUnknown(data['address'], _addressMeta));
    } else if (isInserting) {
      context.missing(_addressMeta);
    }
    if (data.containsKey('locality')) {
      context.handle(_localityMeta,
          locality.isAcceptableOrUnknown(data['locality'], _localityMeta));
    } else if (isInserting) {
      context.missing(_localityMeta);
    }
    if (data.containsKey('city')) {
      context.handle(
          _cityMeta, city.isAcceptableOrUnknown(data['city'], _cityMeta));
    } else if (isInserting) {
      context.missing(_cityMeta);
    }
    if (data.containsKey('zipcode')) {
      context.handle(_zipcodeMeta,
          zipcode.isAcceptableOrUnknown(data['zipcode'], _zipcodeMeta));
    } else if (isInserting) {
      context.missing(_zipcodeMeta);
    }
    if (data.containsKey('latitude')) {
      context.handle(_latitudeMeta,
          latitude.isAcceptableOrUnknown(data['latitude'], _latitudeMeta));
    } else if (isInserting) {
      context.missing(_latitudeMeta);
    }
    if (data.containsKey('longitude')) {
      context.handle(_longitudeMeta,
          longitude.isAcceptableOrUnknown(data['longitude'], _longitudeMeta));
    } else if (isInserting) {
      context.missing(_longitudeMeta);
    }
    if (data.containsKey('aggregate_rating')) {
      context.handle(
          _aggregateRatingMeta,
          aggregateRating.isAcceptableOrUnknown(
              data['aggregate_rating'], _aggregateRatingMeta));
    } else if (isInserting) {
      context.missing(_aggregateRatingMeta);
    }
    if (data.containsKey('total_votes')) {
      context.handle(
          _totalVotesMeta,
          totalVotes.isAcceptableOrUnknown(
              data['total_votes'], _totalVotesMeta));
    } else if (isInserting) {
      context.missing(_totalVotesMeta);
    }
    if (data.containsKey('featured_image')) {
      context.handle(
          _featuredImageMeta,
          featuredImage.isAcceptableOrUnknown(
              data['featured_image'], _featuredImageMeta));
    } else if (isInserting) {
      context.missing(_featuredImageMeta);
    }
    if (data.containsKey('photos_url')) {
      context.handle(_photosUrlMeta,
          photosUrl.isAcceptableOrUnknown(data['photos_url'], _photosUrlMeta));
    } else if (isInserting) {
      context.missing(_photosUrlMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => <GeneratedColumn>{};
  @override
  Restaurant map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Restaurant.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $RestaurantsTable createAlias(String alias) {
    return $RestaurantsTable(_db, alias);
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  $RestaurantsTable _restaurants;
  $RestaurantsTable get restaurants => _restaurants ??= $RestaurantsTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [restaurants];
}
