class RestaurantModel {
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

  RestaurantModel({
    this.id,
    this.name,
    this.thumb,
    this.address,
    this.locality,
    this.city,
    this.zipcode,
    this.latitude,
    this.longitude,
    this.aggregateRating,
    this.totalVotes,
    this.featuredImage,
    this.photosUrl,
  });

  factory RestaurantModel.fromMap(Map<String, dynamic> data) {
    return RestaurantModel(
      id: data['id'],
      name: data['name'],
      thumb: (data.containsKey('thumb') &&
              data['thumb'] != null &&
              data['thumb'].length != 0)
          ? data['thumb']
          : 'https://www.bbcgoodfood.com/sites/default/files/recipe-collections/collection-image/2013/05/chorizo-mozarella-gnocchi-bake-cropped.jpg',
      address: data['location']['address'],
      locality: data['location']['locality'],
      zipcode: data['location']['zipcode'],
      city: data['location']['city'],
      latitude: data['location']['latitude'],
      longitude: data['location']['longitude'],
      aggregateRating: data['user_rating']['aggregate_rating'],
      totalVotes: data['user_rating']['votes'],
      featuredImage: (data.containsKey('featured_image') &&
              data['featured_image'] != null &&
              data['featured_image'].length != 0)
          ? data['featured_image']
          : 'https://www.bbcgoodfood.com/sites/default/files/recipe-collections/collection-image/2013/05/chorizo-mozarella-gnocchi-bake-cropped.jpg',
      photosUrl: (data.containsKey('photos_url') &&
              data['photos_url'] != null &&
              data['photos_url'].length != 0)
          ? data['photos_url']
          : '"https://www.zomato.com/new-york-city/palma-west-village/photos?utm_source=api_basic_user&utm_medium=api&utm_campaign=v2.1#tabtop',
    );
  }
}
