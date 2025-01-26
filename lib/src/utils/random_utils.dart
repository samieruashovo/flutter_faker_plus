import 'dart:math';
// Import the Dart math library to use the Random class for generating random values.

class RandomUtils {
  static final _random = Random();
  // Create a single instance of the Random class to generate random numbers.

  static const _letters = 'abcdefghijklmnopqrstuvwxyz';
  // A string containing all lowercase letters for generating random strings.

  static const _digits = '0123456789';
  // A string containing all numeric digits for generating random numbers as strings.

  // Generates a random string of the specified length using lowercase letters.
  static String randomString(int length) {
    return List.generate(
        length,
        (_) =>
            _letters[_random.nextInt(_letters.length)] // Pick a random letter.
        ).join();
    // Join the list of characters into a single string and return it.
  }

  // Generates a random numeric string of the specified length.
  static String randomNumeric(int length) {
    return List.generate(length,
        (_) => _digits[_random.nextInt(_digits.length)] // Pick a random digit.
        ).join();
    // Join the list of digits into a single string and return it.
  }

  // Generates a random integer between the specified min and max values (inclusive).
  static int randomInt(int min, int max) {
    return min + _random.nextInt(max - min + 1);
    // Generate a random integer in the range [min, max].
  }

  // Generates a random double between the specified min and max values.
  static double randomDouble(double min, double max) {
    return min + _random.nextDouble() * (max - min);
    // Generate a random double in the range [min, max].
  }
}
