import 'utils/random_utils.dart';

/// A class representing a geographical location with latitude and longitude.
///
/// The `GeoLocation` class holds the geographical coordinates of a location,
/// including the latitude and longitude values. These values are represented
/// as `double` types, with latitude ranging from -90 to 90 degrees, and longitude
/// ranging from -180 to 180 degrees.
///
/// Example usage:
/// ```dart
/// GeoLocation location = GeoLocation.generate();
/// print(location.latitude);  // Output: A random latitude between -90 and 90.
/// print(location.longitude); // Output: A random longitude between -180 and 180.
/// ```
class GeoLocation {
  final double latitude;
  final double longitude;

  /// Constructs a [GeoLocation] instance with the given latitude and longitude.
  ///
  /// Both latitude and longitude are required parameters to create a [GeoLocation] object.
  ///
  /// [latitude] The latitude of the location, ranging from -90 to 90 degrees.
  /// [longitude] The longitude of the location, ranging from -180 to 180 degrees.
  GeoLocation({
    required this.latitude,
    required this.longitude,
  });

  /// Generates a random [GeoLocation] instance with random latitude and longitude.
  ///
  /// This static method generates random geographical coordinates, where:
  /// - Latitude is randomly selected between -90 and 90 degrees.
  /// - Longitude is randomly selected between -180 and 180 degrees.
  ///
  /// Returns a new [GeoLocation] object with the randomly generated coordinates.
  ///
  /// Example:
  /// ```dart
  /// GeoLocation location = GeoLocation.generate();
  /// print(location.latitude);  // Output: A random latitude between -90 and 90.
  /// print(location.longitude); // Output: A random longitude between -180 and 180.
  /// ```
  static GeoLocation generate() {
    return GeoLocation(
      latitude: RandomUtils.randomDouble(-90, 90),
      longitude: RandomUtils.randomDouble(-180, 180),
    );
  }
}
