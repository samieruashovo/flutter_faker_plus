import 'utils/random_utils.dart';
// Import the RandomUtils class from the utils/random_utils.dart file.
// This is used for generating random latitude and longitude values.

class GeoLocation {
  final double latitude;
  // Latitude of the geo-location, ranging from -90 to 90 degrees.

  final double longitude;
  // Longitude of the geo-location, ranging from -180 to 180 degrees.

  GeoLocation({
    required this.latitude,
    // Required named parameter to initialize the latitude.

    required this.longitude,
    // Required named parameter to initialize the longitude.
  });

  // Static method to generate a random GeoLocation instance.
  static GeoLocation generate() {
    return GeoLocation(
      latitude: RandomUtils.randomDouble(-90, 90),
      // Generates a random latitude between -90 and 90 degrees.

      longitude: RandomUtils.randomDouble(-180, 180),
      // Generates a random longitude between -180 and 180 degrees.
    );
  }
}
