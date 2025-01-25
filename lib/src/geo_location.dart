import 'utils/random_utils.dart';

class GeoLocation {
  final double latitude;
  final double longitude;

  GeoLocation({
    required this.latitude,
    required this.longitude,
  });

  static GeoLocation generate() {
    return GeoLocation(
      latitude: RandomUtils.randomDouble(-90, 90),
      longitude: RandomUtils.randomDouble(-180, 180),
    );
  }
}
